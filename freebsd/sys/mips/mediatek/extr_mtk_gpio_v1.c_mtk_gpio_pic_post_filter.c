
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gpio_softc {int dummy; } ;
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int GPIO_PIOINT ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mtk_gpio_pic_post_filter(device_t dev, struct intr_irqsrc *isrc)
{
 struct mtk_gpio_softc *sc;
 struct mtk_gpio_pin_irqsrc *pisrc;

 pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
 sc = device_get_softc(dev);
 MTK_GPIO_LOCK(sc);
 MTK_WRITE_4(sc, GPIO_PIOINT, 1u << pisrc->irq);
 MTK_GPIO_UNLOCK(sc);
}
