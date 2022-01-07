
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef int device_t ;


 int CC_GPIO_LOCK (struct chipc_gpio_softc*) ;



 int CC_GPIO_RDFLAG (struct chipc_gpio_softc*,int ,int ) ;
 int CC_GPIO_UNLOCK (struct chipc_gpio_softc*) ;
 int CC_GPIO_VALID_PIN (int ) ;
 int EINVAL ;
 int GPIOIN ;
 int GPIOOUT ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int chipc_gpio_pin_get_mode (struct chipc_gpio_softc*,int ) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_pin_get(device_t dev, uint32_t pin_num, uint32_t *pin_value)
{
 struct chipc_gpio_softc *sc;
 bool pin_high;

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);

 sc = device_get_softc(dev);
 pin_high = 0;

 CC_GPIO_LOCK(sc);

 switch (chipc_gpio_pin_get_mode(sc, pin_num)) {
 case 130:
  pin_high = CC_GPIO_RDFLAG(sc, pin_num, GPIOIN);
  break;

 case 129:
  pin_high = CC_GPIO_RDFLAG(sc, pin_num, GPIOOUT);
  break;

 case 128:
  pin_high = 0;
  break;
 }

 CC_GPIO_UNLOCK(sc);

 *pin_value = pin_high ? GPIO_PIN_HIGH : GPIO_PIN_LOW;

 return (0);
}
