
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rcc_gpio_softc {scalar_t__ sc_gpio_npins; scalar_t__ sc_output; } ;
typedef int device_t ;
struct TYPE_2__ {int caps; int pin; } ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int RCC_GPIO_GP_LVL ;
 int RCC_GPIO_LOCK (struct rcc_gpio_softc*) ;
 int RCC_GPIO_UNLOCK (struct rcc_gpio_softc*) ;
 scalar_t__ RCC_READ (struct rcc_gpio_softc*,int ) ;
 struct rcc_gpio_softc* device_get_softc (int ) ;
 TYPE_1__* rcc_pins ;

__attribute__((used)) static int
rcc_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct rcc_gpio_softc *sc;
 uint32_t value;

 sc = device_get_softc(dev);
 if (pin >= sc->sc_gpio_npins)
  return (EINVAL);

 RCC_GPIO_LOCK(sc);
 if (rcc_pins[pin].caps & GPIO_PIN_INPUT)
  value = RCC_READ(sc, RCC_GPIO_GP_LVL);
 else
  value = sc->sc_output;
 RCC_GPIO_UNLOCK(sc);
 *val = (value & (1 << rcc_pins[pin].pin)) ? 1 : 0;

 return (0);
}
