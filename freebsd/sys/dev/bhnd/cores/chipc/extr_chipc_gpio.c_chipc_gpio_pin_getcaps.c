
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef int device_t ;


 int CC_GPIO_QUIRK (struct chipc_gpio_softc*,int ) ;
 int CC_GPIO_VALID_PIN (int) ;
 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int GPIO_PIN_PULSATE ;
 int GPIO_PIN_TRISTATE ;
 int NO_DCTIMER ;
 int NO_PULLUPDOWN ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_pin_getcaps(device_t dev, uint32_t pin_num, uint32_t *caps)
{
 struct chipc_gpio_softc *sc = device_get_softc(dev);

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);

 *caps = (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT | GPIO_PIN_TRISTATE);

 if (!CC_GPIO_QUIRK(sc, NO_PULLUPDOWN))
  *caps |= (GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN);

 if (!CC_GPIO_QUIRK(sc, NO_DCTIMER))
  *caps |= GPIO_PIN_PULSATE;

 return (0);
}
