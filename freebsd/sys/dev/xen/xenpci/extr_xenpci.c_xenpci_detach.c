
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpci_softc {int * intr_cookie; int res_irq; } ;
typedef int device_t ;


 scalar_t__ BUS_TEARDOWN_INTR (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;
 struct xenpci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int xenpci_deallocate_resources (int ) ;

__attribute__((used)) static int
xenpci_detach(device_t dev)
{
 struct xenpci_softc *scp = device_get_softc(dev);
 device_t parent = device_get_parent(dev);





 if (scp->intr_cookie != ((void*)0)) {
  if (BUS_TEARDOWN_INTR(parent, dev,
      scp->res_irq, scp->intr_cookie) != 0)
   device_printf(dev,
       "intr teardown failed.. continuing\n");
  scp->intr_cookie = ((void*)0);
 }





 return (xenpci_deallocate_resources(dev));
}
