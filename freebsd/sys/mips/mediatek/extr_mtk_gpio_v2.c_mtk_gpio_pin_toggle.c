
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mtk_gpio_softc {size_t num_pins; TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_flags; } ;


 int EINVAL ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIODATA (struct mtk_gpio_softc*) ;
 int GPIO_PIORESET (struct mtk_gpio_softc*) ;
 int GPIO_PIOSET (struct mtk_gpio_softc*) ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 size_t MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct mtk_gpio_softc *sc;
 uint32_t val;
 int ret;

 sc = device_get_softc(dev);
 ret = 0;

 if (pin >= sc->num_pins)
  return (EINVAL);

 MTK_GPIO_LOCK(sc);
 if(!(sc->pins[pin].pin_flags & GPIO_PIN_OUTPUT)) {
  ret = EINVAL;
  goto out;
 }
 val = MTK_READ_4(sc, GPIO_PIODATA(sc));
 val &= (1u << pin);
 if (val)
  MTK_WRITE_4(sc, GPIO_PIORESET(sc), (1u << pin));
 else
  MTK_WRITE_4(sc, GPIO_PIOSET(sc), (1u << pin));

out:
 MTK_GPIO_UNLOCK(sc);

 return (ret);
}
