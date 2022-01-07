
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct pcicfg_msix {int msix_ctrl; scalar_t__ msix_location; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIM_MSIXCTRL_MSIX_ENABLE ;
 scalar_t__ PCIR_MSIX_CTRL ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_ht_map_msi (int ,int ) ;
 scalar_t__ pci_msix_rewrite_table ;
 int pci_resume_msix (int ) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int pci_write_msix_entry (int ,int ,int ,int ) ;

void
pci_enable_msix_method(device_t dev, device_t child, u_int index,
    uint64_t address, uint32_t data)
{

 if (pci_msix_rewrite_table) {
  struct pci_devinfo *dinfo = device_get_ivars(child);
  struct pcicfg_msix *msix = &dinfo->cfg.msix;
  pci_write_config(child,
      msix->msix_location + PCIR_MSIX_CTRL,
      msix->msix_ctrl & ~PCIM_MSIXCTRL_MSIX_ENABLE, 2);
  pci_resume_msix(child);
 } else
  pci_write_msix_entry(child, index, address, data);


 pci_ht_map_msi(child, address);
}
