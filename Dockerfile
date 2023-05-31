FROM selenium/standalone-chrome:113.0

USER root
RUN apt-get -qqy update \
  && apt-get -qqy --no-install-recommends install \
    python3-pip

WORKDIR /app
ADD . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "HoneygainBot.py"]
