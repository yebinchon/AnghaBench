
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenpci_softc {int dummy; } ;
typedef int device_t ;


 struct xenpci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int xenpci_allocate_resources (int ) ;
 int xenpci_deallocate_resources (int ) ;
 int xenpci_irq_init (int ,struct xenpci_softc*) ;

__attribute__((used)) static int
xenpci_attach(device_t dev)
{
 struct xenpci_softc *scp = device_get_softc(dev);
 int error;

 error = xenpci_allocate_resources(dev);
 if (error) {
  device_printf(dev, "xenpci_allocate_resources failed(%d).\n",
      error);
  goto errexit;
 }




 error = xenpci_irq_init(dev, scp);
 if (error) {
  device_printf(dev, "xenpci_irq_init failed(%d).\n",
   error);
  goto errexit;
 }

 return (0);

errexit:



 xenpci_deallocate_resources(dev);
 return (error);
}
