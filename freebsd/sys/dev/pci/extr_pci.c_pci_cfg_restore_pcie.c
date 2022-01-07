
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_pcie {int pcie_location; int pcie_flags; scalar_t__ pcie_type; int pcie_slot_ctl2; int pcie_link_ctl2; int pcie_device_ctl2; int pcie_root_ctl; int pcie_slot_ctl; int pcie_link_ctl; int pcie_device_ctl; } ;
struct TYPE_2__ {struct pcicfg_pcie pcie; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int PCIEM_FLAGS_SLOT ;
 int PCIEM_FLAGS_VERSION ;
 scalar_t__ PCIEM_TYPE_DOWNSTREAM_PORT ;
 scalar_t__ PCIEM_TYPE_ENDPOINT ;
 scalar_t__ PCIEM_TYPE_LEGACY_ENDPOINT ;
 scalar_t__ PCIEM_TYPE_ROOT_EC ;
 scalar_t__ PCIEM_TYPE_ROOT_PORT ;
 int PCIER_DEVICE_CTL ;
 int PCIER_DEVICE_CTL2 ;
 int PCIER_LINK_CTL ;
 int PCIER_LINK_CTL2 ;
 int PCIER_ROOT_CTL ;
 int PCIER_SLOT_CTL ;
 int PCIER_SLOT_CTL2 ;
 int WREG (int ,int ) ;

__attribute__((used)) static void
pci_cfg_restore_pcie(device_t dev, struct pci_devinfo *dinfo)
{

 struct pcicfg_pcie *cfg;
 int version, pos;

 cfg = &dinfo->cfg.pcie;
 pos = cfg->pcie_location;

 version = cfg->pcie_flags & PCIEM_FLAGS_VERSION;

 pci_write_config(dev, pos + (PCIER_DEVICE_CTL), (cfg->pcie_device_ctl), 2);

 if (version > 1 || cfg->pcie_type == PCIEM_TYPE_ROOT_PORT ||
     cfg->pcie_type == PCIEM_TYPE_ENDPOINT ||
     cfg->pcie_type == PCIEM_TYPE_LEGACY_ENDPOINT)
  pci_write_config(dev, pos + (PCIER_LINK_CTL), (cfg->pcie_link_ctl), 2);

 if (version > 1 || (cfg->pcie_type == PCIEM_TYPE_ROOT_PORT ||
     (cfg->pcie_type == PCIEM_TYPE_DOWNSTREAM_PORT &&
      (cfg->pcie_flags & PCIEM_FLAGS_SLOT))))
  pci_write_config(dev, pos + (PCIER_SLOT_CTL), (cfg->pcie_slot_ctl), 2);

 if (version > 1 || cfg->pcie_type == PCIEM_TYPE_ROOT_PORT ||
     cfg->pcie_type == PCIEM_TYPE_ROOT_EC)
  pci_write_config(dev, pos + (PCIER_ROOT_CTL), (cfg->pcie_root_ctl), 2);

 if (version > 1) {
  pci_write_config(dev, pos + (PCIER_DEVICE_CTL2), (cfg->pcie_device_ctl2), 2);
  pci_write_config(dev, pos + (PCIER_LINK_CTL2), (cfg->pcie_link_ctl2), 2);
  pci_write_config(dev, pos + (PCIER_SLOT_CTL2), (cfg->pcie_slot_ctl2), 2);
 }

}
