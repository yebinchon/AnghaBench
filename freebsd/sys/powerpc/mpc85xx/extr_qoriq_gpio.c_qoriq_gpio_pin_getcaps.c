
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OPENDRAIN ;
 int GPIO_PIN_OUTPUT ;
 int VALID_PIN (int) ;

__attribute__((used)) static int
qoriq_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{

 if (!VALID_PIN(pin))
  return (EINVAL);

 *caps = (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT | GPIO_PIN_OPENDRAIN);

 return (0);
}
