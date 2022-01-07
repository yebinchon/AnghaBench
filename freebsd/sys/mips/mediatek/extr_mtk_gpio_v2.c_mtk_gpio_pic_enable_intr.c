
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct mtk_gpio_softc {TYPE_1__* pins; } ;
struct mtk_gpio_pin_irqsrc {unsigned int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ intr_polarity; } ;


 int GPIO_PIOFENA (struct mtk_gpio_softc*) ;
 int GPIO_PIORENA (struct mtk_gpio_softc*) ;
 scalar_t__ INTR_POLARITY_LOW ;
 int MTK_GPIO_LOCK (struct mtk_gpio_softc*) ;
 int MTK_GPIO_UNLOCK (struct mtk_gpio_softc*) ;
 unsigned int MTK_READ_4 (struct mtk_gpio_softc*,int ) ;
 int MTK_WRITE_4 (struct mtk_gpio_softc*,int ,unsigned int) ;
 struct mtk_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mtk_gpio_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct mtk_gpio_softc *sc;
 struct mtk_gpio_pin_irqsrc *pisrc;
 uint32_t pin, mask, val;

 sc = device_get_softc(dev);

 pisrc = (struct mtk_gpio_pin_irqsrc *)isrc;
 pin = pisrc->irq;
 mask = 1u << pin;

 MTK_GPIO_LOCK(sc);

 if (sc->pins[pin].intr_polarity == INTR_POLARITY_LOW) {
  val = MTK_READ_4(sc, GPIO_PIORENA(sc)) & ~mask;
  MTK_WRITE_4(sc, GPIO_PIORENA(sc), val);
  val = MTK_READ_4(sc, GPIO_PIOFENA(sc)) | mask;
  MTK_WRITE_4(sc, GPIO_PIOFENA(sc), val);
 } else {
  val = MTK_READ_4(sc, GPIO_PIOFENA(sc)) & ~mask;
  MTK_WRITE_4(sc, GPIO_PIOFENA(sc), val);
  val = MTK_READ_4(sc, GPIO_PIORENA(sc)) | mask;
  MTK_WRITE_4(sc, GPIO_PIORENA(sc), val);
 }

 MTK_GPIO_UNLOCK(sc);
}
