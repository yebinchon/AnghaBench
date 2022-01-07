
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_QUIRK_DISABLE_MSI ;
 int pci_get_devid (int ) ;
 int pci_has_quirk (int ,int ) ;
 int pci_honor_msi_blacklist ;

int
pci_msi_device_blacklisted(device_t dev)
{

 if (!pci_honor_msi_blacklist)
  return (0);

 return (pci_has_quirk(pci_get_devid(dev), PCI_QUIRK_DISABLE_MSI));
}
