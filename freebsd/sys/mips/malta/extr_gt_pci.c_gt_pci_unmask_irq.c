
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gt_pci_softc {int sc_imask; int sc_elcr; } ;
struct gt_pci_intr_cookie {int irq; struct gt_pci_softc* sc; } ;


 int gt_pci_set_icus (struct gt_pci_softc*) ;

__attribute__((used)) static void
gt_pci_unmask_irq(void *source)
{
 struct gt_pci_intr_cookie *cookie = source;
 struct gt_pci_softc *sc = cookie->sc;
 int irq = cookie->irq;


 sc->sc_imask &= ~(1 << irq);
 sc->sc_elcr &= ~(1 << irq);

 gt_pci_set_icus(sc);
}
