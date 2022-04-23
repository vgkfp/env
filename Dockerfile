FROM alpine:3.15

RUN apk add util-linux git nodejs yarn fish starship httpie bat fd exa ripgrep && \
    fish <(http -F https://get.oh-my.fish) --noninteractive

COPY config /root/.config

WORKDIR /app

CMD fish
