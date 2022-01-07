
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plic_softc {int dummy; } ;
struct plic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PLIC_PRIORITY (int ) ;
 int WR4 (struct plic_softc*,int ,int) ;
 struct plic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
plic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct plic_softc *sc;
 struct plic_irqsrc *src;

 sc = device_get_softc(dev);
 src = (struct plic_irqsrc *)isrc;

 WR4(sc, PLIC_PRIORITY(src->irq), 1);
}
