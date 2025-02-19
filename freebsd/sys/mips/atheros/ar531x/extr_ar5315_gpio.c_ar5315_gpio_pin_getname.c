
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ar5315_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; int gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int GPIO_LOCK (struct ar5315_gpio_softc*) ;
 int GPIO_UNLOCK (struct ar5315_gpio_softc*) ;
 struct ar5315_gpio_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int
ar5315_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct ar5315_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 memcpy(name, sc->gpio_pins[i].gp_name, GPIOMAXNAME);
 GPIO_UNLOCK(sc);

 return (0);
}
