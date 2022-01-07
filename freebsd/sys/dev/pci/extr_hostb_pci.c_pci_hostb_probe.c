
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_HOST ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
pci_hostb_probe(device_t dev)
{
 u_int32_t id;

 id = pci_get_devid(dev);

 switch (id) {


 case 0x30501106:
  return (ENXIO);

 default:
  break;
 }

 if (pci_get_class(dev) == PCIC_BRIDGE &&
     pci_get_subclass(dev) == PCIS_BRIDGE_HOST) {
  device_set_desc(dev, "Host to PCI bridge");
  device_quiet(dev);
  return (-10000);
 }
 return (ENXIO);
}
