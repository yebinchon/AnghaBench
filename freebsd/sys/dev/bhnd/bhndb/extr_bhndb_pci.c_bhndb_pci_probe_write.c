
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct resource {int dummy; } ;
struct bhndb_pci_probe {int dev; } ;
typedef int bus_size_t ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int bhndb_pci_probe_map (struct bhndb_pci_probe*,int ,int ,int,struct resource**,int *) ;
 void bus_write_1 (struct resource*,int ,int ) ;
 void bus_write_2 (struct resource*,int ,int ) ;
 void bus_write_4 (struct resource*,int ,int ) ;
 int device_printf (int ,char*,int ,int ,int) ;
 int panic (char*,int) ;

__attribute__((used)) static void
bhndb_pci_probe_write(struct bhndb_pci_probe *probe, bhnd_addr_t addr,
    bhnd_size_t offset, uint32_t value, u_int width)
{
 struct resource *r;
 bus_size_t res_offset;
 int error;


 error = bhndb_pci_probe_map(probe, addr, offset, width, &r,
     &res_offset);
 if (error) {
  device_printf(probe->dev, "error mapping %#jx+%#jx for "
      "writing: %d\n", addr, offset, error);
  return;
 }


 switch (width) {
 case 1:
  return (bus_write_1(r, res_offset, value));
 case 2:
  return (bus_write_2(r, res_offset, value));
 case 4:
  return (bus_write_4(r, res_offset, value));
 default:
  panic("unsupported width: %u", width);
 }
}
