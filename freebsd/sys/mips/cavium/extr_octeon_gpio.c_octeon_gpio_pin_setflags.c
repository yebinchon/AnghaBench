
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct octeon_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 int EINVAL ;
 struct octeon_gpio_softc* device_get_softc (int ) ;
 int octeon_gpio_pin_configure (struct octeon_gpio_softc*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
octeon_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 int i;
 struct octeon_gpio_softc *sc = device_get_softc(dev);

 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 octeon_gpio_pin_configure(sc, &sc->gpio_pins[i], flags);

 return (0);
}
