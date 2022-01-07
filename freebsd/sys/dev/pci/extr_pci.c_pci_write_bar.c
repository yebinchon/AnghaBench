
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_map {int pm_value; int pm_reg; } ;
struct pci_devinfo {int cfg; } ;
typedef int pci_addr_t ;
typedef int device_t ;


 scalar_t__ PCIR_IS_BIOS (int *,int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_maprange (int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
pci_write_bar(device_t dev, struct pci_map *pm, pci_addr_t base)
{
 struct pci_devinfo *dinfo;
 int ln2range;


 dinfo = device_get_ivars(dev);
 if (PCIR_IS_BIOS(&dinfo->cfg, pm->pm_reg))
  ln2range = 32;
 else
  ln2range = pci_maprange(pm->pm_value);
 pci_write_config(dev, pm->pm_reg, base, 4);
 if (ln2range == 64)
  pci_write_config(dev, pm->pm_reg + 4, base >> 32, 4);
 pm->pm_value = pci_read_config(dev, pm->pm_reg, 4);
 if (ln2range == 64)
  pm->pm_value |= (pci_addr_t)pci_read_config(dev,
      pm->pm_reg + 4, 4) << 32;
}
