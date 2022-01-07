
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ar5315_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_READ (struct ar5315_gpio_softc*,int ) ;
 int ar531x_gpio_cr () ;
 struct ar5315_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ar5315_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct ar5315_gpio_softc *sc = device_get_softc(dev);
 int i;
 int dir;

 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 dir = GPIO_READ(sc, ar531x_gpio_cr()) & (1 << pin);

 *flags = dir ? GPIO_PIN_OUTPUT : GPIO_PIN_INPUT;







 return (0);
}
