#!/usr/bin/env bash

docker build -t mydocker .
docker run --cap-add="SYS_ADMIN" -e DEBUG \
    mydocker run ubuntu:latest /usr/local/bin/docker-explorer mypid

docker run --cap-add="SYS_ADMIN" -e DEBUG \
    mydocker run ubuntu:latest /bin/ps aux
