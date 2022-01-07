
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct generic_pcie_core_softc {scalar_t__ bus_start; scalar_t__ bus_end; int bsh; int bst; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int PCIE_ADDR_OFFSET (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ PCIE_REGMAX ;
 scalar_t__ PCI_FUNCMAX ;
 scalar_t__ PCI_SLOTMAX ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int bus_space_write_2 (int ,int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 struct generic_pcie_core_softc* device_get_softc (int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
generic_pcie_write_config(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t val, int bytes)
{
 struct generic_pcie_core_softc *sc;
 bus_space_handle_t h;
 bus_space_tag_t t;
 uint64_t offset;

 sc = device_get_softc(dev);
 if ((bus < sc->bus_start) || (bus > sc->bus_end))
  return;
 if ((slot > PCI_SLOTMAX) || (func > PCI_FUNCMAX) ||
     (reg > PCIE_REGMAX))
  return;

 offset = PCIE_ADDR_OFFSET(bus - sc->bus_start, slot, func, reg);

 t = sc->bst;
 h = sc->bsh;

 switch (bytes) {
 case 1:
  bus_space_write_1(t, h, offset, val);
  break;
 case 2:
  bus_space_write_2(t, h, offset, htole16(val));
  break;
 case 4:
  bus_space_write_4(t, h, offset, htole32(val));
  break;
 default:
  return;
 }
}
