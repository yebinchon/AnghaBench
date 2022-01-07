
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int vmci_num_intr; int vmci_dev; struct vmci_interrupt* vmci_intrs; } ;
struct vmci_interrupt {int vmci_handler; int vmci_irq; } ;


 int INTR_EXCL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int bus_describe_intr (int ,int ,int ,char*) ;
 int bus_setup_intr (int ,int ,int,int *,int ,int *,int *) ;
 int vmci_interrupt ;
 int vmci_interrupt_bm ;

__attribute__((used)) static int
vmci_setup_interrupts(struct vmci_softc *sc)
{
 struct vmci_interrupt *intr;
 int error, flags;

 flags = INTR_TYPE_NET | INTR_MPSAFE;
 if (sc->vmci_num_intr > 1)
  flags |= INTR_EXCL;

 intr = &sc->vmci_intrs[0];
 error = bus_setup_intr(sc->vmci_dev, intr->vmci_irq, flags, ((void*)0),
     vmci_interrupt, ((void*)0), &intr->vmci_handler);
 if (error)
  return (error);
 bus_describe_intr(sc->vmci_dev, intr->vmci_irq, intr->vmci_handler,
     "vmci_interrupt");

 if (sc->vmci_num_intr == 2) {
  intr = &sc->vmci_intrs[1];
  error = bus_setup_intr(sc->vmci_dev, intr->vmci_irq, flags,
      ((void*)0), vmci_interrupt_bm, ((void*)0), &intr->vmci_handler);
  if (error)
   return (error);
  bus_describe_intr(sc->vmci_dev, intr->vmci_irq,
      intr->vmci_handler, "vmci_interrupt_bm");
 }

 return (0);
}
