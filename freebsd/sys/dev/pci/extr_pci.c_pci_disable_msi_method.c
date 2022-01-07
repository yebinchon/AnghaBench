
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_msi {int msi_ctrl; scalar_t__ msi_location; } ;
struct TYPE_2__ {struct pcicfg_msi msi; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIM_MSICTRL_MSI_ENABLE ;
 scalar_t__ PCIR_MSI_CTRL ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_ht_map_msi (int ,int ) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

void
pci_disable_msi_method(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 struct pcicfg_msi *msi = &dinfo->cfg.msi;


 pci_ht_map_msi(child, 0);


 msi->msi_ctrl &= ~PCIM_MSICTRL_MSI_ENABLE;
 pci_write_config(child, msi->msi_location + PCIR_MSI_CTRL,
     msi->msi_ctrl, 2);
}
