FROM python:3
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
EXPOSE 8089
CMD ["python","manage.py","runserver","0.0.0.0:8089"]


