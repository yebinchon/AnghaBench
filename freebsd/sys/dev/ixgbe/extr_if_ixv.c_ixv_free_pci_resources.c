
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_rx_queue {int que_irq; } ;
struct adapter {scalar_t__ intr_type; int num_rx_queues; int * pci_mem; int irq; struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int iflib_irq_free (int ,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
ixv_free_pci_resources(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ix_rx_queue *que = adapter->rx_queues;
 device_t dev = iflib_get_dev(ctx);


 if (adapter->intr_type == IFLIB_INTR_MSIX)
  iflib_irq_free(ctx, &adapter->irq);

 if (que != ((void*)0)) {
  for (int i = 0; i < adapter->num_rx_queues; i++, que++) {
   iflib_irq_free(ctx, &que->que_irq);
  }
 }

 if (adapter->pci_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(adapter->pci_mem), adapter->pci_mem);
}
