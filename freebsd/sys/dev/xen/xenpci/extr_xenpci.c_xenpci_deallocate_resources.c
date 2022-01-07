
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpci_softc {scalar_t__ res_irq; int rid_irq; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_deactivate_resource (int ,int ,int ,scalar_t__) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct xenpci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
xenpci_deallocate_resources(device_t dev)
{
 struct xenpci_softc *scp = device_get_softc(dev);

 if (scp->res_irq != 0) {
  bus_deactivate_resource(dev, SYS_RES_IRQ,
   scp->rid_irq, scp->res_irq);
  bus_release_resource(dev, SYS_RES_IRQ,
   scp->rid_irq, scp->res_irq);
  scp->res_irq = 0;
 }

 return (0);
}
