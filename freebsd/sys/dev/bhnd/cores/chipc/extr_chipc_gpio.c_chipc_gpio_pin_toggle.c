
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
 int CC_GPIO_WRFLAG (struct chipc_gpio_softc*,int ,int ,int) ;
 int EINVAL ;
 int ENODEV ;
 int GPIOOUT ;
 int chipc_gpio_pin_get_mode (struct chipc_gpio_softc*,int ) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_pin_toggle(device_t dev, uint32_t pin_num)
{
 struct chipc_gpio_softc *sc;
 bool pin_high;
 int error;

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);

 sc = device_get_softc(dev);
 error = 0;

 CC_GPIO_LOCK(sc);

 switch (chipc_gpio_pin_get_mode(sc, pin_num)) {
 case 130:
 case 128:
  error = ENODEV;
  break;

 case 129:
  pin_high = CC_GPIO_RDFLAG(sc, pin_num, GPIOOUT);
  CC_GPIO_WRFLAG(sc, pin_num, GPIOOUT, !pin_high);
  break;
 }

 CC_GPIO_UNLOCK(sc);

 return (error);
}
