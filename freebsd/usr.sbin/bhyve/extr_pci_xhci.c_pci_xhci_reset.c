
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_pcs; scalar_t__ er_events_cnt; scalar_t__ er_enq_idx; } ;
struct pci_xhci_softc {TYPE_1__ rtsregs; } ;


 int XHCI_MAX_SLOTS ;
 int pci_xhci_reset_slot (struct pci_xhci_softc*,int) ;

__attribute__((used)) static void
pci_xhci_reset(struct pci_xhci_softc *sc)
{
 int i;

 sc->rtsregs.er_enq_idx = 0;
 sc->rtsregs.er_events_cnt = 0;
 sc->rtsregs.event_pcs = 1;

 for (i = 1; i <= XHCI_MAX_SLOTS; i++) {
  pci_xhci_reset_slot(sc, i);
 }
}
