
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct octeon_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int EINVAL ;
 int GPIO_LOCK (struct octeon_gpio_softc*) ;
 int GPIO_UNLOCK (struct octeon_gpio_softc*) ;
 int cvmx_gpio_clear (int) ;
 int cvmx_gpio_set (int) ;
 struct octeon_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
octeon_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct octeon_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 if (value)
  cvmx_gpio_set(1 << pin);
 else
  cvmx_gpio_clear(1 << pin);
 GPIO_UNLOCK(sc);

 return (0);
}
