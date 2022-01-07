
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gpio_pin_t ;
struct TYPE_3__ {int flags; int pin; int * dev; } ;


 int GPIO_ACTIVE_LOW ;
 int GPIO_PIN_SET (int *,int ,int) ;
 int KASSERT (int ,char*) ;

int
gpio_pin_set_active(gpio_pin_t pin, bool active)
{
 int rv;
 uint32_t tmp;

 if (pin->flags & GPIO_ACTIVE_LOW)
  tmp = active ? 0 : 1;
 else
  tmp = active ? 1 : 0;

 KASSERT(pin != ((void*)0), ("GPIO pin is NULL."));
 KASSERT(pin->dev != ((void*)0), ("GPIO pin device is NULL."));
 rv = GPIO_PIN_SET(pin->dev, pin->pin, tmp);
 return (rv);
}
