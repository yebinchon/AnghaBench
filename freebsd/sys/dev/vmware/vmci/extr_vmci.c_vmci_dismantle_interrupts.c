
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int vmci_num_intr; scalar_t__ vmci_intr_type; int vmci_interrupt_bm_task; int vmci_interrupt_dq_task; int vmci_dev; struct vmci_interrupt* vmci_intrs; } ;
struct vmci_interrupt {int vmci_rid; int * vmci_irq; int * vmci_handler; } ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 scalar_t__ VMCI_INTR_TYPE_INTX ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int * data_buffer ;
 int free (int *,int ) ;
 int pci_release_msi (int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
vmci_dismantle_interrupts(struct vmci_softc *sc)
{
 struct vmci_interrupt *intr;
 int i;

 for (i = 0; i < sc->vmci_num_intr; i++) {
  intr = &sc->vmci_intrs[i];
  if (intr->vmci_handler != ((void*)0)) {
   bus_teardown_intr(sc->vmci_dev, intr->vmci_irq,
       intr->vmci_handler);
   intr->vmci_handler = ((void*)0);
  }
  if (intr->vmci_irq != ((void*)0)) {
   bus_release_resource(sc->vmci_dev, SYS_RES_IRQ,
       intr->vmci_rid, intr->vmci_irq);
   intr->vmci_irq = ((void*)0);
   intr->vmci_rid = -1;
  }
 }

 if ((sc->vmci_intr_type != VMCI_INTR_TYPE_INTX) &&
     (sc->vmci_num_intr))
  pci_release_msi(sc->vmci_dev);

 taskqueue_drain(taskqueue_swi, &sc->vmci_interrupt_dq_task);
 taskqueue_drain(taskqueue_swi, &sc->vmci_interrupt_bm_task);

 if (data_buffer != ((void*)0))
  free(data_buffer, M_DEVBUF);
}
