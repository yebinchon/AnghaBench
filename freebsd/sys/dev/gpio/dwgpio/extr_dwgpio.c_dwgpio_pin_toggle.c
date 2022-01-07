
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dwgpio_softc {int gpio_npins; int port; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 int EINVAL ;
 int GPIO_LOCK (struct dwgpio_softc*) ;
 int GPIO_SWPORT_DR (int ) ;
 int GPIO_UNLOCK (struct dwgpio_softc*) ;
 int READ4 (struct dwgpio_softc*,int ) ;
 int WRITE4 (struct dwgpio_softc*,int ,int) ;
 struct dwgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dwgpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct dwgpio_softc *sc;
 int reg;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 reg = READ4(sc, GPIO_SWPORT_DR(sc->port));
 if (reg & (1 << i))
  reg &= ~(1 << i);
 else
  reg |= (1 << i);
 WRITE4(sc, GPIO_SWPORT_DR(sc->port), reg);
 GPIO_UNLOCK(sc);

 return (0);
}
