
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ pcie_location; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;


 int ENOENT ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int PCI_EXTCAP_ID (int ) ;
 int PCI_EXTCAP_NEXTPTR (int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_read_config (int ,int,int) ;

int
pci_find_next_extcap_method(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;
 uint32_t ecap;
 uint16_t ptr;


 if (cfg->pcie.pcie_location == 0)
  return (ENXIO);

 ecap = pci_read_config(child, start, 4);
 KASSERT(PCI_EXTCAP_ID(ecap) == capability,
     ("start extended capability is not expected capability"));
 ptr = PCI_EXTCAP_NEXTPTR(ecap);
 while (ptr != 0) {
  ecap = pci_read_config(child, ptr, 4);
  if (PCI_EXTCAP_ID(ecap) == capability) {
   if (capreg != ((void*)0))
    *capreg = ptr;
   return (0);
  }
  ptr = PCI_EXTCAP_NEXTPTR(ecap);
 }

 return (ENOENT);
}
