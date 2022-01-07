
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int pci_add_children (int ,int,int) ;
 int pci_attach_common (int ) ;
 int pcib_get_bus (int ) ;
 int pcib_get_domain (int ) ;

int
pci_attach(device_t dev)
{
 int busno, domain, error;

 error = pci_attach_common(dev);
 if (error)
  return (error);







 domain = pcib_get_domain(dev);
 busno = pcib_get_bus(dev);
 pci_add_children(dev, domain, busno);
 return (bus_generic_attach(dev));
}
