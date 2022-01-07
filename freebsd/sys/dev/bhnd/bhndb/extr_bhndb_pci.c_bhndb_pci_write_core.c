
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;
typedef int u_int ;
struct resource {int dummy; } ;
struct bhndb_pci_softc {int dummy; } ;
typedef scalar_t__ bus_size_t ;


 int bhndb_pci_get_core_regs (struct bhndb_pci_softc*,scalar_t__,int,struct resource**,scalar_t__*) ;
 int bus_write_1 (struct resource*,scalar_t__,int ) ;
 int bus_write_2 (struct resource*,scalar_t__,int ) ;
 int bus_write_4 (struct resource*,scalar_t__,int ) ;
 int panic (char*,int,...) ;

__attribute__((used)) static void
bhndb_pci_write_core(struct bhndb_pci_softc *sc, bus_size_t offset,
    uint32_t value, u_int width)
{
 struct resource *r;
 bus_size_t r_offset;
 int error;

 error = bhndb_pci_get_core_regs(sc, offset, width, &r, &r_offset);
 if (error) {
  panic("no PCI register window mapping %#jx+%#x: %d",
      (uintmax_t)offset, width, error);
 }

 switch (width) {
 case 1:
  bus_write_1(r, r_offset, value);
  break;
 case 2:
  bus_write_2(r, r_offset, value);
  break;
 case 4:
  bus_write_4(r, r_offset, value);
  break;
 default:
  panic("invalid width: %u", width);
 }
}
