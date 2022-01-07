
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef int device_t ;


 int CC_GPIO_LOCK (struct chipc_gpio_softc*) ;



 int CC_GPIO_QUIRK (struct chipc_gpio_softc*,int ) ;
 int CC_GPIO_RDFLAG (struct chipc_gpio_softc*,int,int ) ;
 int CC_GPIO_UNLOCK (struct chipc_gpio_softc*) ;
 int CC_GPIO_VALID_PIN (int) ;
 int EINVAL ;
 int GPIOPD ;
 int GPIOPU ;
 int GPIOTIMEROUTMASK ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int GPIO_PIN_PULSATE ;
 int GPIO_PIN_TRISTATE ;
 int NO_DCTIMER ;
 int NO_PULLUPDOWN ;
 int chipc_gpio_pin_get_mode (struct chipc_gpio_softc*,int) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_pin_getflags(device_t dev, uint32_t pin_num, uint32_t *flags)
{
 struct chipc_gpio_softc *sc = device_get_softc(dev);

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);

 CC_GPIO_LOCK(sc);

 switch (chipc_gpio_pin_get_mode(sc, pin_num)) {
 case 130:
  *flags = GPIO_PIN_INPUT;

  if (!CC_GPIO_QUIRK(sc, NO_PULLUPDOWN)) {
   if (CC_GPIO_RDFLAG(sc, pin_num, GPIOPU)) {
    *flags |= GPIO_PIN_PULLUP;
   } else if (CC_GPIO_RDFLAG(sc, pin_num, GPIOPD)) {
    *flags |= GPIO_PIN_PULLDOWN;
   }
  }
  break;

 case 129:
  *flags = GPIO_PIN_OUTPUT;

  if (!CC_GPIO_QUIRK(sc, NO_DCTIMER)) {
   if (CC_GPIO_RDFLAG(sc, pin_num, GPIOTIMEROUTMASK))
    *flags |= GPIO_PIN_PULSATE;
  }

  break;

 case 128:
  *flags = GPIO_PIN_TRISTATE|GPIO_PIN_OUTPUT;
  break;
 }

 CC_GPIO_UNLOCK(sc);

 return (0);
}
