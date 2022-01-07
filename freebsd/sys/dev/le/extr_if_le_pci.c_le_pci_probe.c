
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;




 scalar_t__ AMD_VENDOR ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
le_pci_probe(device_t dev)
{

 if (pci_get_vendor(dev) != AMD_VENDOR)
  return (ENXIO);

 switch (pci_get_device(dev)) {
 case 128:
  device_set_desc(dev, "AMD PCnet-PCI");

  return (BUS_PROBE_LOW_PRIORITY);
 case 129:
  device_set_desc(dev, "AMD PCnet-Home");

  return (BUS_PROBE_LOW_PRIORITY);
 default:
  return (ENXIO);
 }
}
