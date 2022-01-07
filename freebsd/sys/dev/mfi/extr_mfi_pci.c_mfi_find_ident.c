
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_ident {scalar_t__ vendor; scalar_t__ device; int subvendor; int subdevice; } ;
typedef int device_t ;


 struct mfi_ident* mfi_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct mfi_ident *
mfi_find_ident(device_t dev)
{
 struct mfi_ident *m;

 for (m = mfi_identifiers; m->vendor != 0; m++) {
  if ((m->vendor == pci_get_vendor(dev)) &&
      (m->device == pci_get_device(dev)) &&
      ((m->subvendor == pci_get_subvendor(dev)) ||
      (m->subvendor == 0xffff)) &&
      ((m->subdevice == pci_get_subdevice(dev)) ||
      (m->subdevice == 0xffff)))
   return (m);
 }

 return (((void*)0));
}
