
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct mtk_gpio_softc {unsigned int num_pins; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIODATA (struct mtk_gpio_softc*) ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct mtk_gpio_softc *sc;
 uint32_t data;
 int ret;

 sc = device_get_softc(dev);
 ret = 0;

 if (pin >= sc->num_pins)
  return (EINVAL);

 MTK_GPIO_LOCK(sc);
 data = MTK_READ_4(sc, GPIO_PIODATA(sc));
 *val = (data & (1u << pin)) ? 1 : 0;
 MTK_GPIO_UNLOCK(sc);

 return (ret);
}
