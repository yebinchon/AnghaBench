
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_name (int ) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
ebus_pci_probe(device_t dev)
{

 if (pci_get_class(dev) != PCIC_BRIDGE ||
     pci_get_vendor(dev) != 0x108e ||
     strcmp(ofw_bus_get_name(dev), "ebus") != 0)
  return (ENXIO);

 if (pci_get_device(dev) == 0x1000)
  device_set_desc(dev, "PCI-EBus2 bridge");
 else if (pci_get_device(dev) == 0x1100)
  device_set_desc(dev, "PCI-EBus3 bridge");
 else
  return (ENXIO);
 return (BUS_PROBE_GENERIC);
}
