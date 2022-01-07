
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef scalar_t__ u_char ;
struct sym_pci_chip {scalar_t__ device_id; scalar_t__ revision_id; } ;
typedef int device_t ;


 scalar_t__ PCI_VENDOR_NCR ;
 int nitems (struct sym_pci_chip*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct sym_pci_chip* sym_pci_dev_table ;

__attribute__((used)) static const struct sym_pci_chip *
sym_find_pci_chip(device_t dev)
{
 const struct sym_pci_chip *chip;
 int i;
 u_short device_id;
 u_char revision;

 if (pci_get_vendor(dev) != PCI_VENDOR_NCR)
  return ((void*)0);

 device_id = pci_get_device(dev);
 revision = pci_get_revid(dev);

 for (i = 0; i < nitems(sym_pci_dev_table); i++) {
  chip = &sym_pci_dev_table[i];
  if (device_id != chip->device_id)
   continue;
  if (revision > chip->revision_id)
   continue;
  return chip;
 }

 return ((void*)0);
}
