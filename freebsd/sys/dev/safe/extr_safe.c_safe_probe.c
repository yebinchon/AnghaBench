
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_PRODUCT_SAFEXCEL ;
 scalar_t__ PCI_VENDOR_SAFENET ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
safe_probe(device_t dev)
{
 if (pci_get_vendor(dev) == PCI_VENDOR_SAFENET &&
     pci_get_device(dev) == PCI_PRODUCT_SAFEXCEL)
  return (BUS_PROBE_DEFAULT);
 return (ENXIO);
}
