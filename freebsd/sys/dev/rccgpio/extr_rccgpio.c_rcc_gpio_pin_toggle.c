
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rcc_gpio_softc {scalar_t__ sc_gpio_npins; int sc_output; } ;
typedef int device_t ;
struct TYPE_2__ {int caps; int pin; } ;


 int EINVAL ;
 int GPIO_PIN_OUTPUT ;
 int RCC_GPIO_GP_LVL ;
 int RCC_GPIO_LOCK (struct rcc_gpio_softc*) ;
 int RCC_GPIO_UNLOCK (struct rcc_gpio_softc*) ;
 int RCC_WRITE (struct rcc_gpio_softc*,int ,int) ;
 struct rcc_gpio_softc* device_get_softc (int ) ;
 TYPE_1__* rcc_pins ;

__attribute__((used)) static int
rcc_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct rcc_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->sc_gpio_npins)
  return (EINVAL);

 if ((rcc_pins[pin].caps & GPIO_PIN_OUTPUT) == 0)
  return (EINVAL);

 RCC_GPIO_LOCK(sc);
 if ((sc->sc_output & (1 << rcc_pins[pin].pin)) == 0)
  sc->sc_output |= (1 << rcc_pins[pin].pin);
 else
  sc->sc_output &= ~(1 << rcc_pins[pin].pin);
 RCC_WRITE(sc, RCC_GPIO_GP_LVL, sc->sc_output);
 RCC_GPIO_UNLOCK(sc);

 return (0);
}
