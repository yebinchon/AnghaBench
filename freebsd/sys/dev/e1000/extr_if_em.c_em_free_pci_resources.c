
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_rx_queue {int que_irq; } ;
struct adapter {scalar_t__ intr_type; int rx_num_queues; int * ioport; int * flash; int * memory; int irq; struct em_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 scalar_t__ IFLIB_INTR_MSIX ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int iflib_irq_free (int ,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
em_free_pci_resources(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct em_rx_queue *que = adapter->rx_queues;
 device_t dev = iflib_get_dev(ctx);


 if (adapter->intr_type == IFLIB_INTR_MSIX)
  iflib_irq_free(ctx, &adapter->irq);

 for (int i = 0; i < adapter->rx_num_queues; i++, que++) {
  iflib_irq_free(ctx, &que->que_irq);
 }

 if (adapter->memory != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(adapter->memory), adapter->memory);
  adapter->memory = ((void*)0);
 }

 if (adapter->flash != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(adapter->flash), adapter->flash);
  adapter->flash = ((void*)0);
 }

 if (adapter->ioport != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT,
      rman_get_rid(adapter->ioport), adapter->ioport);
  adapter->ioport = ((void*)0);
 }
}
