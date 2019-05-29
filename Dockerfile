# our base image for java
FROM openjdk:latest

# set working dir inside image / cotainer
WORKDIR /app

# set place where will be stored some data ... like logs
VOLUME ["/app"]

# metadata to an image
LABEL "author_name" = "Artem Mosolov"
LABEL "author_email" = "amosolov@lohika.com"

# Copy jar file into the container at specified directory
COPY ./target/*.jar app.jar

# specify the port number the container should expose
EXPOSE 8181

# run the application
#CMD java -jar app.jar
ENTRYPOINT java -jar app.jar


# build an image from current directory
# docker build -t artem_mosolv/spring_boot_docker_app .

# run docker container with the image + open needed port
# docker run --rm -ti -p 8181:8080 artem_mosolv/spring_boot_docker_app


# docker CLI & cheat sheet
# http://design.jboss.org/redhatdeveloper/marketing/docker_cheatsheet/cheatsheet/images/docker_cheatsheet_r3v2.pdf