
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct jz4780_gpio_softc {TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {size_t pin_caps; } ;


 int EINVAL ;
 int JZ4780_GPIO_LOCK (struct jz4780_gpio_softc*) ;
 size_t JZ4780_GPIO_PINS ;
 int JZ4780_GPIO_UNLOCK (struct jz4780_gpio_softc*) ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct jz4780_gpio_softc *sc;

 if (pin >= JZ4780_GPIO_PINS)
  return (EINVAL);

 sc = device_get_softc(dev);
 JZ4780_GPIO_LOCK(sc);
 *caps = sc->pins[pin].pin_caps;
 JZ4780_GPIO_UNLOCK(sc);

 return (0);
}
