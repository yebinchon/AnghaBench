
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_ident {scalar_t__ vendor; scalar_t__ device; int subvendor; int subdevice; } ;
typedef int device_t ;


 struct mrsas_ident* device_table ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct mrsas_ident *
mrsas_find_ident(device_t dev)
{
 struct mrsas_ident *pci_device;

 for (pci_device = device_table; pci_device->vendor != 0; pci_device++) {
  if ((pci_device->vendor == pci_get_vendor(dev)) &&
      (pci_device->device == pci_get_device(dev)) &&
      ((pci_device->subvendor == pci_get_subvendor(dev)) ||
      (pci_device->subvendor == 0xffff)) &&
      ((pci_device->subdevice == pci_get_subdevice(dev)) ||
      (pci_device->subdevice == 0xffff)))
   return (pci_device);
 }
 return (((void*)0));
}
