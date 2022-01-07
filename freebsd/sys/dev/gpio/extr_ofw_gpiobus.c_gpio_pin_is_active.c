
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* gpio_pin_t ;
struct TYPE_3__ {int flags; int pin; int * dev; } ;


 int GPIO_ACTIVE_LOW ;
 int GPIO_PIN_GET (int *,int ,scalar_t__*) ;
 int KASSERT (int ,char*) ;

int
gpio_pin_is_active(gpio_pin_t pin, bool *active)
{
 int rv;
 uint32_t tmp;

 KASSERT(pin != ((void*)0), ("GPIO pin is NULL."));
 KASSERT(pin->dev != ((void*)0), ("GPIO pin device is NULL."));
 rv = GPIO_PIN_GET(pin->dev, pin->pin, &tmp);
 if (rv != 0) {
  return (rv);
 }

 if (pin->flags & GPIO_ACTIVE_LOW)
  *active = tmp == 0;
 else
  *active = tmp != 0;
 return (0);
}
