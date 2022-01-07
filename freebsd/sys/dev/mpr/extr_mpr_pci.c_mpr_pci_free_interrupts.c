
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int msi_msgs; int mpr_dev; struct mpr_queue* queues; } ;
struct mpr_queue {int * irq; int irq_rid; int intrhand; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;

void
mpr_pci_free_interrupts(struct mpr_softc *sc)
{
 struct mpr_queue *q;
 int i;

 if (sc->queues == ((void*)0))
  return;

 for (i = 0; i < sc->msi_msgs; i++) {
  q = &sc->queues[i];
  if (q->irq != ((void*)0)) {
   bus_teardown_intr(sc->mpr_dev, q->irq,
       q->intrhand);
   bus_release_resource(sc->mpr_dev, SYS_RES_IRQ,
       q->irq_rid, q->irq);
  }
 }
}
