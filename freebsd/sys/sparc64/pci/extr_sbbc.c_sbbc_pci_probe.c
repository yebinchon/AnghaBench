
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ SBBC_PCI_PRODUCT ;
 scalar_t__ SBBC_PCI_VENDOR ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
sbbc_pci_probe(device_t dev)
{

 if (pci_get_vendor(dev) == SBBC_PCI_VENDOR &&
     pci_get_device(dev) == SBBC_PCI_PRODUCT) {
  device_set_desc(dev, "Sun BootBus controller");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
