
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int msi_msgs; int mps_dev; struct mps_queue* queues; } ;
struct mps_queue {int * irq; int irq_rid; int intrhand; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;

void
mps_pci_free_interrupts(struct mps_softc *sc)
{
 struct mps_queue *q;
 int i;

 if (sc->queues == ((void*)0))
  return;

 for (i = 0; i < sc->msi_msgs; i++) {
  q = &sc->queues[i];
  if (q->irq != ((void*)0)) {
   bus_teardown_intr(sc->mps_dev, q->irq,
       q->intrhand);
   bus_release_resource(sc->mps_dev, SYS_RES_IRQ,
       q->irq_rid, q->irq);
  }
 }
}
