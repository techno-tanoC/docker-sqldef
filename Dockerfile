FROM alpine:3.12

WORKDIR /work

ARG MYSLQDEF_URL
ARG PSQLDEF_URL
ARG SQLITE3DEF_URL

RUN wget -O - ${MYSLQDEF_URL} | tar xvfz - -C /usr/local/bin &&\
    wget -O - ${PSQLDEF_URL} | tar xvfz - -C /usr/local/bin &&\
    wget -O - ${SQLITE3DEF_URL} | tar xvfz - -C /usr/local/bin
