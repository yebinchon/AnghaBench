
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int num_rx_queues; int ctx; int irq; struct ixl_rx_queue* rx_queues; } ;
struct ixl_rx_queue {int que_irq; } ;
struct iavf_sc {int * pci_mem; int dev; struct ixl_vsi vsi; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int iflib_irq_free (int ,int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
iavf_free_pci_resources(struct iavf_sc *sc)
{
 struct ixl_vsi *vsi = &sc->vsi;
 struct ixl_rx_queue *rx_que = vsi->rx_queues;
 device_t dev = sc->dev;


 if (rx_que == ((void*)0))
  goto early;


 iflib_irq_free(vsi->ctx, &vsi->irq);

 for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++)
  iflib_irq_free(vsi->ctx, &rx_que->que_irq);

early:
 if (sc->pci_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->pci_mem), sc->pci_mem);
}
