
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int PCI_QUIRK_DISABLE_MSIX ;
 int * pci_find_bsf (int ,int ,int ) ;
 int pci_get_devid (int *) ;
 scalar_t__ pci_has_quirk (int ,int ) ;
 int pci_honor_msi_blacklist ;
 int pci_msi_blacklisted () ;

__attribute__((used)) static int
pci_msix_blacklisted(void)
{
 device_t dev;

 if (!pci_honor_msi_blacklist)
  return (0);

 dev = pci_find_bsf(0, 0, 0);
 if (dev != ((void*)0) && pci_has_quirk(pci_get_devid(dev),
     PCI_QUIRK_DISABLE_MSIX))
  return (1);

 return (pci_msi_blacklisted());
}
