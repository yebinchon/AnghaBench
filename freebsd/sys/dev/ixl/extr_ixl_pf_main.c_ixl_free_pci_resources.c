
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int num_rx_queues; int ctx; int irq; struct ixl_rx_queue* rx_queues; } ;
struct ixl_rx_queue {int que_irq; } ;
struct ixl_pf {int * pci_mem; struct ixl_vsi vsi; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int iflib_get_dev (int ) ;
 int iflib_irq_free (int ,int *) ;
 int rman_get_rid (int *) ;

void
ixl_free_pci_resources(struct ixl_pf *pf)
{
 struct ixl_vsi *vsi = &pf->vsi;
 device_t dev = iflib_get_dev(vsi->ctx);
 struct ixl_rx_queue *rx_que = vsi->rx_queues;


 if (rx_que == ((void*)0))
  goto early;




 iflib_irq_free(vsi->ctx, &vsi->irq);

 for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++)
  iflib_irq_free(vsi->ctx, &rx_que->que_irq);
early:
 if (pf->pci_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(pf->pci_mem), pf->pci_mem);
}
