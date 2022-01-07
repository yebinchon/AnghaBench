
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int num_rings; int * msix_mem; struct ptnet_queue* queues; int dev; } ;
struct ptnet_queue {int * irq; int * cookie; int * taskq; } ;
typedef int device_t ;


 int PCIR_BAR (int ) ;
 int PTNETMAP_MSIX_PCI_BAR ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
ptnet_irqs_fini(struct ptnet_softc *sc)
{
 device_t dev = sc->dev;
 int i;

 for (i = 0; i < sc->num_rings; i++) {
  struct ptnet_queue *pq = sc->queues + i;

  if (pq->taskq) {
   taskqueue_free(pq->taskq);
   pq->taskq = ((void*)0);
  }

  if (pq->cookie) {
   bus_teardown_intr(dev, pq->irq, pq->cookie);
   pq->cookie = ((void*)0);
  }

  if (pq->irq) {
   bus_release_resource(dev, SYS_RES_IRQ, i + 1, pq->irq);
   pq->irq = ((void*)0);
  }
 }

 if (sc->msix_mem) {
  pci_release_msi(dev);

  bus_release_resource(dev, SYS_RES_MEMORY,
         PCIR_BAR(PTNETMAP_MSIX_PCI_BAR),
         sc->msix_mem);
  sc->msix_mem = ((void*)0);
 }
}
