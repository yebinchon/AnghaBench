
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gpio_pin_t ;
typedef int * device_t ;
struct TYPE_4__ {int pin; int * dev; } ;


 int * GPIO_GET_BUS (int *) ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int free (TYPE_1__*,int ) ;
 int gpiobus_release_pin (int *,int ) ;

void
gpio_pin_release(gpio_pin_t gpio)
{
 device_t busdev;

 if (gpio == ((void*)0))
  return;

 KASSERT(gpio->dev != ((void*)0), ("invalid pin state"));

 busdev = GPIO_GET_BUS(gpio->dev);
 if (busdev != ((void*)0))
  gpiobus_release_pin(busdev, gpio->pin);


 free(gpio, M_DEVBUF);
}
