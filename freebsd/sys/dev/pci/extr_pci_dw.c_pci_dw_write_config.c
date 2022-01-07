
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct resource {int dummy; } ;
struct pci_dw_softc {scalar_t__ root_bus; scalar_t__ sub_bus; struct resource* cfg_res; int cfg_size; int cfg_pa; struct resource* dbi_res; } ;
typedef int device_t ;


 int IATU_CFG_BUS (scalar_t__) ;
 int IATU_CFG_FUNC (scalar_t__) ;
 int IATU_CFG_SLOT (scalar_t__) ;
 int IATU_CTRL1_TYPE_CFG0 ;
 int IATU_CTRL1_TYPE_CFG1 ;
 scalar_t__ PCI_FUNCMAX ;
 scalar_t__ PCI_REGMAX ;
 scalar_t__ PCI_SLOTMAX ;
 int bus_write_1 (struct resource*,scalar_t__,int ) ;
 int bus_write_2 (struct resource*,scalar_t__,int ) ;
 int bus_write_4 (struct resource*,scalar_t__,int ) ;
 struct pci_dw_softc* device_get_softc (int ) ;
 int pci_dw_check_dev (struct pci_dw_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int pci_dw_map_out_atu (struct pci_dw_softc*,int,int,int ,int,int ) ;

__attribute__((used)) static void
pci_dw_write_config(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t val, int bytes)
{
 struct pci_dw_softc *sc;
 struct resource *res;
 uint64_t addr;
 int type, rv;

 sc = device_get_softc(dev);
 if (!pci_dw_check_dev(sc, bus, slot, func, reg))
  return;

 if ((slot > PCI_SLOTMAX) || (func > PCI_FUNCMAX) ||
     (reg > PCI_REGMAX))
  return;

 if (bus == sc->root_bus) {
  res = (sc->dbi_res);
 } else {
  addr = IATU_CFG_BUS(bus) | IATU_CFG_SLOT(slot) |
      IATU_CFG_FUNC(func);
  if (bus == sc->sub_bus)
   type = IATU_CTRL1_TYPE_CFG0;
  else
   type = IATU_CTRL1_TYPE_CFG1;
  rv = pci_dw_map_out_atu(sc, 1, type,
      sc->cfg_pa, addr, sc->cfg_size);
  if (rv != 0)
   return ;
  res = sc->cfg_res;
 }


 switch (bytes) {
 case 1:
  bus_write_1(res, reg, val);
  break;
 case 2:
  bus_write_2(res, reg, val);
  break;
 case 4:
  bus_write_4(res, reg, val);
  break;
 default:
  break;
 }
}
