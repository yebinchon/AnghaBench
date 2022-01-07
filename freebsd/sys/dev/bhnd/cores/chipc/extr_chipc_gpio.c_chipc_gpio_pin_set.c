
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef int device_t ;


 int CC_GPIO_LOCK (struct chipc_gpio_softc*) ;



 int CC_GPIO_UNLOCK (struct chipc_gpio_softc*) ;
 int CC_GPIO_VALID_PIN (int) ;
 int CC_GPIO_WRFLAG (struct chipc_gpio_softc*,int,int ,int) ;
 int EINVAL ;
 int ENODEV ;
 int GPIOOUT ;


 int chipc_gpio_pin_get_mode (struct chipc_gpio_softc*,int) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_pin_set(device_t dev, uint32_t pin_num, uint32_t pin_value)
{
 struct chipc_gpio_softc *sc;
 bool pin_high;
 int error;

 sc = device_get_softc(dev);
 error = 0;

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);

 switch (pin_value) {
 case 129:
  pin_high = 1;
  break;
 case 128:
  pin_high = 0;
  break;
 default:
  return (EINVAL);
 }

 CC_GPIO_LOCK(sc);

 switch (chipc_gpio_pin_get_mode(sc, pin_num)) {
 case 132:
 case 130:
  error = ENODEV;
  break;

 case 131:
  CC_GPIO_WRFLAG(sc, pin_num, GPIOOUT, pin_high);
  break;
 }

 CC_GPIO_UNLOCK(sc);

 return (error);
}
