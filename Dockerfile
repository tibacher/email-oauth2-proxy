# Verwende ein schlankes Python-Image
FROM python:3.12-slim

# Arbeitsverzeichnis festlegen
WORKDIR /app

# Kopiere die requirements-Dateien und installiere Abhängigkeiten
COPY requirements-core.txt requirements-core.txt
RUN pip install --no-cache-dir -r requirements-core.txt

# Kopiere den Rest des Repositorys
COPY . .

# Starte den Email Proxy
CMD ["python", "emailproxy.py", "--no-gui"]
