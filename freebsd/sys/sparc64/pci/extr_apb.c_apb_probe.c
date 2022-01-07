
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
apb_probe(device_t dev)
{

 if (pci_get_vendor(dev) == 0x108e &&
     pci_get_device(dev) == 0x5000) {
  device_set_desc(dev, "APB PCI-PCI bridge");
  return (0);
 }
 return (ENXIO);
}
