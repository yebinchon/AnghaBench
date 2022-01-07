
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_devinfo {int cfg; } ;
typedef int pci_addr_t ;
typedef int device_t ;


 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 scalar_t__ PCIR_IS_BIOS (int *,int) ;
 scalar_t__ PCI_BAR_MEM (int) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_maprange (int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

void
pci_read_bar(device_t dev, int reg, pci_addr_t *mapp, pci_addr_t *testvalp,
    int *bar64)
{
 struct pci_devinfo *dinfo;
 pci_addr_t map, testval;
 int ln2range;
 uint16_t cmd;






 dinfo = device_get_ivars(dev);
 if (PCIR_IS_BIOS(&dinfo->cfg, reg)) {
  map = pci_read_config(dev, reg, 4);
  pci_write_config(dev, reg, 0xfffffffe, 4);
  testval = pci_read_config(dev, reg, 4);
  pci_write_config(dev, reg, map, 4);
  *mapp = map;
  *testvalp = testval;
  if (bar64 != ((void*)0))
   *bar64 = 0;
  return;
 }

 map = pci_read_config(dev, reg, 4);
 ln2range = pci_maprange(map);
 if (ln2range == 64)
  map |= (pci_addr_t)pci_read_config(dev, reg + 4, 4) << 32;






 cmd = pci_read_config(dev, PCIR_COMMAND, 2);
 pci_write_config(dev, PCIR_COMMAND,
     cmd & ~(PCI_BAR_MEM(map) ? PCIM_CMD_MEMEN : PCIM_CMD_PORTEN), 2);
 testval = 0;
 pci_write_config(dev, reg, 0xffffffff, 4);
 if (ln2range == 64) {
  pci_write_config(dev, reg + 4, 0xffffffff, 4);
  testval |= (pci_addr_t)pci_read_config(dev, reg + 4, 4) << 32;
 }
 testval |= pci_read_config(dev, reg, 4);






 pci_write_config(dev, reg, map, 4);
 if (ln2range == 64)
  pci_write_config(dev, reg + 4, map >> 32, 4);
 pci_write_config(dev, PCIR_COMMAND, cmd, 2);

 *mapp = map;
 *testvalp = testval;
 if (bar64 != ((void*)0))
  *bar64 = (ln2range == 64);
}
