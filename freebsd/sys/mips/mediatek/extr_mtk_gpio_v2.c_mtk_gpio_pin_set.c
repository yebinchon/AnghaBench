
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct mtk_gpio_softc {unsigned int num_pins; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIORESET (struct mtk_gpio_softc*) ;
 int GPIO_PIOSET (struct mtk_gpio_softc*) ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct mtk_gpio_softc *sc;
 int ret;

 sc = device_get_softc(dev);
 ret = 0;

 if (pin >= sc->num_pins)
  return (EINVAL);

 MTK_GPIO_LOCK(sc);
 if (value)
  MTK_WRITE_4(sc, GPIO_PIOSET(sc), (1u << pin));
 else
  MTK_WRITE_4(sc, GPIO_PIORESET(sc), (1u << pin));
 MTK_GPIO_UNLOCK(sc);

 return (ret);
}
