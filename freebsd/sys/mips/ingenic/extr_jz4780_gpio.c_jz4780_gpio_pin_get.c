
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct jz4780_gpio_softc {int dummy; } ;
typedef int device_t ;


 unsigned int CSR_READ_4 (struct jz4780_gpio_softc*,int ) ;
 int EINVAL ;
 int JZ4780_GPIO_LOCK (struct jz4780_gpio_softc*) ;
 unsigned int JZ4780_GPIO_PINS ;
 int JZ4780_GPIO_UNLOCK (struct jz4780_gpio_softc*) ;
 int JZ_GPIO_PIN ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct jz4780_gpio_softc *sc;
 uint32_t data, mask;

 if (pin >= JZ4780_GPIO_PINS)
  return (EINVAL);

 mask = (1u << pin);
 sc = device_get_softc(dev);
 JZ4780_GPIO_LOCK(sc);
 data = CSR_READ_4(sc, JZ_GPIO_PIN);
 JZ4780_GPIO_UNLOCK(sc);
 *val = (data & mask) ? 1 : 0;

 return (0);
}
