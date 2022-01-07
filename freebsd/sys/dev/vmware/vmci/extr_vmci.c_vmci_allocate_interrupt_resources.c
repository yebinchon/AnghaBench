
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_softc {int vmci_num_intr; scalar_t__ vmci_intr_type; TYPE_1__* vmci_intrs; int vmci_dev; } ;
struct resource {int dummy; } ;
struct TYPE_2__ {int vmci_rid; struct resource* vmci_irq; } ;


 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 scalar_t__ VMCI_INTR_TYPE_INTX ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;

__attribute__((used)) static int
vmci_allocate_interrupt_resources(struct vmci_softc *sc)
{
 struct resource *irq;
 int flags, i, rid;

 flags = RF_ACTIVE;
 flags |= (sc->vmci_num_intr == 1) ? RF_SHAREABLE : 0;
 rid = (sc->vmci_intr_type == VMCI_INTR_TYPE_INTX) ? 0 : 1;

 for (i = 0; i < sc->vmci_num_intr; i++, rid++) {
  irq = bus_alloc_resource_any(sc->vmci_dev, SYS_RES_IRQ, &rid,
      flags);
  if (irq == ((void*)0))
   return (ENXIO);
  sc->vmci_intrs[i].vmci_irq = irq;
  sc->vmci_intrs[i].vmci_rid = rid;
 }

 return (0);
}
