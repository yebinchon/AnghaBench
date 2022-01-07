
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {scalar_t__ res_irq; scalar_t__ res_ioport; scalar_t__ res_drq; int ppc_lock; int rid_drq; int rid_ioport; int rid_irq; int intr_cookie; } ;
typedef int device_t ;


 struct ppc_data* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int device_delete_children (int ) ;
 int mtx_destroy (int *) ;

int
ppc_detach(device_t dev)
{
 struct ppc_data *ppc = DEVTOSOFTC(dev);

 if (ppc->res_irq == 0) {
  return (ENXIO);
 }


 device_delete_children(dev);

 if (ppc->res_irq != 0) {
  bus_teardown_intr(dev, ppc->res_irq, ppc->intr_cookie);
  bus_release_resource(dev, SYS_RES_IRQ, ppc->rid_irq,
         ppc->res_irq);
 }
 if (ppc->res_ioport != 0) {
  bus_release_resource(dev, SYS_RES_IOPORT, ppc->rid_ioport,
         ppc->res_ioport);
 }
 if (ppc->res_drq != 0) {
  bus_release_resource(dev, SYS_RES_DRQ, ppc->rid_drq,
         ppc->res_drq);
 }

 mtx_destroy(&ppc->ppc_lock);

 return (0);
}
