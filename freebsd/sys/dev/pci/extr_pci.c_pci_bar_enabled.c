
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_map {int pm_value; int pm_reg; } ;
struct pci_devinfo {int cfg; } ;
typedef int device_t ;


 int PCIM_BIOS_ENABLE ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 scalar_t__ PCIR_IS_BIOS (int *,int ) ;
 scalar_t__ PCI_BAR_MEM (int) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_read_config (int ,int ,int) ;

int
pci_bar_enabled(device_t dev, struct pci_map *pm)
{
 struct pci_devinfo *dinfo;
 uint16_t cmd;

 dinfo = device_get_ivars(dev);
 if (PCIR_IS_BIOS(&dinfo->cfg, pm->pm_reg) &&
     !(pm->pm_value & PCIM_BIOS_ENABLE))
  return (0);
 cmd = pci_read_config(dev, PCIR_COMMAND, 2);
 if (PCIR_IS_BIOS(&dinfo->cfg, pm->pm_reg) || PCI_BAR_MEM(pm->pm_value))
  return ((cmd & PCIM_CMD_MEMEN) != 0);
 else
  return ((cmd & PCIM_CMD_PORTEN) != 0);
}
