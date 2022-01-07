
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_PCI ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
ofw_pcib_pci_probe(device_t dev)
{

 if ((pci_get_class(dev) != PCIC_BRIDGE) ||
     (pci_get_subclass(dev) != PCIS_BRIDGE_PCI)) {
  return (ENXIO);
 }

 if (ofw_bus_get_node(dev) == -1)
  return (ENXIO);

 device_set_desc(dev, "OFW PCI-PCI bridge");
 return (0);
}
