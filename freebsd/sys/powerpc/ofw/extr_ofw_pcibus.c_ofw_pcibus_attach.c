
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int bus_generic_attach (int ) ;
 int ofw_devices_only ;
 int ofw_pcibus_enum_bus (int ,int ,int ) ;
 int ofw_pcibus_enum_devtree (int ,int ,int ) ;
 int pci_attach_common (int ) ;
 int pcib_get_bus (int ) ;
 int pcib_get_domain (int ) ;

__attribute__((used)) static int
ofw_pcibus_attach(device_t dev)
{
 u_int busno, domain;
 int error;

 error = pci_attach_common(dev);
 if (error)
  return (error);
 domain = pcib_get_domain(dev);
 busno = pcib_get_bus(dev);





 ofw_pcibus_enum_devtree(dev, domain, busno);
 if (!ofw_devices_only)
  ofw_pcibus_enum_bus(dev, domain, busno);

 return (bus_generic_attach(dev));
}
