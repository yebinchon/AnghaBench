
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ pin_func; } ;


 int CSR_WRITE_4 (struct jz4780_gpio_softc*,int ,unsigned int) ;
 int EINVAL ;
 int JZ4780_GPIO_LOCK (struct jz4780_gpio_softc*) ;
 unsigned int JZ4780_GPIO_PINS ;
 int JZ4780_GPIO_UNLOCK (struct jz4780_gpio_softc*) ;
 scalar_t__ JZ_FUNC_GPIO ;
 int JZ_GPIO_PAT0C ;
 int JZ_GPIO_PAT0S ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct jz4780_gpio_softc *sc;
 uint32_t mask;
 int retval;

 if (pin >= JZ4780_GPIO_PINS)
  return (EINVAL);

 retval = EINVAL;
 mask = (1u << pin);
 sc = device_get_softc(dev);
 JZ4780_GPIO_LOCK(sc);
 if (sc->pins[pin].pin_func == JZ_FUNC_GPIO) {
  CSR_WRITE_4(sc, value ? JZ_GPIO_PAT0S : JZ_GPIO_PAT0C, mask);
  retval = 0;
 }
 JZ4780_GPIO_UNLOCK(sc);

 return (retval);
}
