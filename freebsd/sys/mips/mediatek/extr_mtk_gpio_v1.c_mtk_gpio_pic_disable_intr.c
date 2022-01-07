
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct mtk_gpio_softc {int dummy; } ;
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int GPIO_PIOFENA ;
 int GPIO_PIORENA ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mtk_gpio_pic_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct mtk_gpio_softc *sc;
 struct mtk_gpio_pin_irqsrc *pisrc;
 uint32_t pin, mask, val;

 sc = device_get_softc(dev);

 pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
 pin = pisrc->irq;
 mask = 1u << pin;

 MTK_GPIO_LOCK(sc);

 val = MTK_READ_4(sc, GPIO_PIORENA) & ~mask;
 MTK_WRITE_4(sc, GPIO_PIORENA, val);
 val = MTK_READ_4(sc, GPIO_PIOFENA) & ~mask;
 MTK_WRITE_4(sc, GPIO_PIOFENA, val);

 MTK_GPIO_UNLOCK(sc);
}
