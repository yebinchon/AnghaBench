
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mtk_pic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int device_get_softc (int ) ;
 int pic_irq_unmask (int ,int ) ;

__attribute__((used)) static void
mtk_pic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 u_int irq;

 irq = ((struct mtk_pic_irqsrc *)isrc)->irq;
 pic_irq_unmask(device_get_softc(dev), irq);
}
