
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_PRODUCT_SUN_HMENETWORK ;
 scalar_t__ PCI_VENDOR_SUN ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

int
hme_pci_probe(device_t dev)
{

 if (pci_get_vendor(dev) == PCI_VENDOR_SUN &&
     pci_get_device(dev) == PCI_PRODUCT_SUN_HMENETWORK) {
  device_set_desc(dev, "Sun HME 10/100 Ethernet");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
