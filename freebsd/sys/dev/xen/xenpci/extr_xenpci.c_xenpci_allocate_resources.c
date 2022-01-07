
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpci_softc {int * res_irq; int rid_irq; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int *,int) ;
 struct xenpci_softc* device_get_softc (int ) ;
 int printf (char*) ;
 int xenpci_deallocate_resources (int ) ;

__attribute__((used)) static int
xenpci_allocate_resources(device_t dev)
{
 struct xenpci_softc *scp = device_get_softc(dev);

 scp->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
   &scp->rid_irq, RF_SHAREABLE|RF_ACTIVE);
 if (scp->res_irq == ((void*)0)) {
  printf("xenpci Could not allocate irq.\n");
  goto errexit;
 }

 return (0);

errexit:

 xenpci_deallocate_resources(dev);
 return (ENXIO);
}
