
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_pic_isrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int device_get_softc (int ) ;
 int pic_irq_unmask (int ,int ) ;

__attribute__((used)) static void
jz4780_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct jz4780_pic_isrc *pic_isrc;

 pic_isrc = (struct jz4780_pic_isrc *)isrc;
 pic_irq_unmask(device_get_softc(dev), pic_isrc->irq);
}
