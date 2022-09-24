FROM python:3.9

WORKDIR /papp

COPY . /papp

RUN export PYTHONPATH=/usr/bin/python \
&& pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "focus-app.py" ]