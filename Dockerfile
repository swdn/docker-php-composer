FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
    zip \
    nano \
    unzip \
    curl

# Install extensions
RUN docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
