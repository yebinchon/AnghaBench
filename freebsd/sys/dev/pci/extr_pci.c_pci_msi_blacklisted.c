
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int PCI_QUIRK_ENABLE_MSI_VM ;
 scalar_t__ VM_GUEST_NO ;
 int * pci_find_bsf (int ,int ,int ) ;
 int pci_get_devid (int *) ;
 int pci_has_quirk (int ,int ) ;
 int pci_honor_msi_blacklist ;
 int pci_msi_device_blacklisted (int *) ;
 scalar_t__ pcie_chipset ;
 scalar_t__ pcix_chipset ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
pci_msi_blacklisted(void)
{
 device_t dev;

 if (!pci_honor_msi_blacklist)
  return (0);


 if (!(pcie_chipset || pcix_chipset)) {
  if (vm_guest != VM_GUEST_NO) {




   dev = pci_find_bsf(0, 0, 0);
   if (dev != ((void*)0))
    return (!pci_has_quirk(pci_get_devid(dev),
     PCI_QUIRK_ENABLE_MSI_VM));
  }
  return (1);
 }

 dev = pci_find_bsf(0, 0, 0);
 if (dev != ((void*)0))
  return (pci_msi_device_blacklisted(dev));
 return (0);
}
