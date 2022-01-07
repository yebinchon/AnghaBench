
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mtk_gpio_softc {size_t num_pins; TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {size_t pin_caps; } ;


 int EINVAL ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct mtk_gpio_softc *sc = device_get_softc(dev);

 if (pin >= sc->num_pins)
  return (EINVAL);

 MTK_GPIO_LOCK(sc);
 *caps = sc->pins[pin].pin_caps;
 MTK_GPIO_UNLOCK(sc);

 return (0);
}
