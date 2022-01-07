
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_softc {int sc_bus; } ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int device_delete_children (int ) ;
 struct pci_softc* device_get_softc (int ) ;

int
pci_detach(device_t dev)
{



 int error;

 error = bus_generic_detach(dev);
 if (error)
  return (error);






 return (device_delete_children(dev));
}
