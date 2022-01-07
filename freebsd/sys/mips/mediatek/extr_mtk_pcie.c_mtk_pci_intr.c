
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct mtk_pci_softc {unsigned int sc_irq_start; unsigned int sc_irq_end; struct intr_event** sc_eventstab; } ;
struct intr_event {int ie_handlers; } ;


 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int FILTER_HANDLED ;
 int MTK_PCI_PCIINT ;
 unsigned int MT_READ32 (struct mtk_pci_softc*,int ) ;
 int intr_event_handle (struct intr_event*,int *) ;
 int printf (char*,unsigned int) ;

__attribute__((used)) static int
mtk_pci_intr(void *arg)
{
 struct mtk_pci_softc *sc = arg;
 struct intr_event *event;
 uint32_t reg, irq, irqidx;

 reg = MT_READ32(sc, MTK_PCI_PCIINT);

 for (irq = sc->sc_irq_start; irq <= sc->sc_irq_end; irq++) {
  if (reg & (1u<<irq)) {
   irqidx = irq - sc->sc_irq_start;
   event = sc->sc_eventstab[irqidx];
   if (!event || CK_SLIST_EMPTY(&event->ie_handlers)) {
    if (irq != 0)
     printf("Stray PCI IRQ %d\n", irq);
    continue;
   }

   intr_event_handle(event, ((void*)0));
  }
 }

 return (FILTER_HANDLED);
}
