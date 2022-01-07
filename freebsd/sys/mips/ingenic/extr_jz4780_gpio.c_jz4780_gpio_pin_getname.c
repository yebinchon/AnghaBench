
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 size_t JZ4780_GPIO_PINS ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int
jz4780_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct jz4780_gpio_softc *sc;

 if (pin >= JZ4780_GPIO_PINS)
  return (EINVAL);

 sc = device_get_softc(dev);
 strncpy(name, sc->pins[pin].pin_name, GPIOMAXNAME - 1);
 name[GPIOMAXNAME - 1] = '\0';

 return (0);
}
