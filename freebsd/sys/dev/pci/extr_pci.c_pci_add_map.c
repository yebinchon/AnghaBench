
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint16_t ;
typedef int u_long ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pci_map {int pm_value; } ;
typedef int pci_addr_t ;
typedef int device_t ;


 int PCIM_BAR_IO_RESERVED ;
 int PCIM_BAR_MEM_PREFETCH ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 scalar_t__ PCI_BAR_IO (int) ;
 scalar_t__ PCI_BAR_MEM (int) ;
 int PCI_QUIRK_REALLOC_BAR ;
 int RF_ALIGNMENT_LOG2 (int) ;
 int RF_PREFETCHABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int ,int ,int ,int) ;
 struct pci_map* pci_add_bar (int ,int,int,int) ;
 scalar_t__ pci_clear_bars ;
 int pci_disable_io (int ,int) ;
 scalar_t__ pci_do_realloc_bars ;
 scalar_t__ pci_enable_io_modes ;
 struct pci_map* pci_find_bar (int ,int) ;
 int pci_get_bus (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ pci_has_quirk (int ,int ) ;
 int pci_mapbase (int) ;
 int pci_maprange (int) ;
 int pci_mapsize (int) ;
 char* pci_maptype (int) ;
 int pci_memen (int ) ;
 int pci_porten (int ) ;
 int pci_read_bar (int ,int,int*,int*,int *) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_bar (int ,struct pci_map*,int) ;
 int pci_write_config (int ,int ,int ,int) ;
 int printf (char*,...) ;
 int resource_list_add (struct resource_list*,int,int,int,int,int) ;
 int resource_list_delete (struct resource_list*,int,int) ;
 struct resource* resource_list_reserve (struct resource_list*,int ,int ,int,int*,int,int,int,int) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
pci_add_map(device_t bus, device_t dev, int reg, struct resource_list *rl,
    int force, int prefetch)
{
 struct pci_map *pm;
 pci_addr_t base, map, testval;
 pci_addr_t start, end, count;
 int barlen, basezero, flags, maprange, mapsize, type;
 uint16_t cmd;
 struct resource *res;





 pm = pci_find_bar(dev, reg);
 if (pm != ((void*)0)) {
  maprange = pci_maprange(pm->pm_value);
  barlen = maprange == 64 ? 2 : 1;
  return (barlen);
 }

 pci_read_bar(dev, reg, &map, &testval, ((void*)0));
 if (PCI_BAR_MEM(map)) {
  type = SYS_RES_MEMORY;
  if (map & PCIM_BAR_MEM_PREFETCH)
   prefetch = 1;
 } else
  type = SYS_RES_IOPORT;
 mapsize = pci_mapsize(testval);
 base = pci_mapbase(map);



 basezero = base == 0;

 maprange = pci_maprange(map);
 barlen = maprange == 64 ? 2 : 1;
 if (PCI_BAR_IO(testval) && (testval & PCIM_BAR_IO_RESERVED) != 0)
  return (barlen);
 if ((type == SYS_RES_MEMORY && mapsize < 4) ||
     (type == SYS_RES_IOPORT && mapsize < 2))
  return (barlen);


 pm = pci_add_bar(dev, reg, map, mapsize);
 if (bootverbose) {
  printf("\tmap[%02x]: type %s, range %2d, base %#jx, size %2d",
      reg, pci_maptype(map), maprange, (uintmax_t)base, mapsize);
  if (type == SYS_RES_IOPORT && !pci_porten(dev))
   printf(", port disabled\n");
  else if (type == SYS_RES_MEMORY && !pci_memen(dev))
   printf(", memory disabled\n");
  else
   printf(", enabled\n");
 }
 if (!force && (basezero || map == testval))
  return (barlen);
 if ((u_long)base != base) {
  device_printf(bus,
      "pci%d:%d:%d:%d bar %#x too many address bits",
      pci_get_domain(dev), pci_get_bus(dev), pci_get_slot(dev),
      pci_get_function(dev), reg);
  return (barlen);
 }
 if (pci_enable_io_modes) {

  if (type == SYS_RES_IOPORT && !pci_porten(dev)) {
   cmd = pci_read_config(dev, PCIR_COMMAND, 2);
   cmd |= PCIM_CMD_PORTEN;
   pci_write_config(dev, PCIR_COMMAND, cmd, 2);
  }
  if (type == SYS_RES_MEMORY && !pci_memen(dev)) {
   cmd = pci_read_config(dev, PCIR_COMMAND, 2);
   cmd |= PCIM_CMD_MEMEN;
   pci_write_config(dev, PCIR_COMMAND, cmd, 2);
  }
 } else {
  if (type == SYS_RES_IOPORT && !pci_porten(dev))
   return (barlen);
  if (type == SYS_RES_MEMORY && !pci_memen(dev))
   return (barlen);
 }

 count = (pci_addr_t)1 << mapsize;
 flags = RF_ALIGNMENT_LOG2(mapsize);
 if (prefetch)
  flags |= RF_PREFETCHABLE;
 if (basezero || base == pci_mapbase(testval) || pci_clear_bars) {
  start = 0;
  end = ~0;
 } else {
  start = base;
  end = base + count - 1;
 }
 resource_list_add(rl, type, reg, start, end, count);







 res = resource_list_reserve(rl, bus, dev, type, &reg, start, end, count,
     flags);
 if ((pci_do_realloc_bars
  || pci_has_quirk(pci_get_devid(dev), PCI_QUIRK_REALLOC_BAR))
     && res == ((void*)0) && (start != 0 || end != ~0)) {






  resource_list_delete(rl, type, reg);
  resource_list_add(rl, type, reg, 0, ~0, count);
  res = resource_list_reserve(rl, bus, dev, type, &reg, 0, ~0,
      count, flags);
 }
 if (res == ((void*)0)) {
  resource_list_delete(rl, type, reg);
  pci_disable_io(dev, type);
  if (bootverbose)
   device_printf(bus,
       "pci%d:%d:%d:%d bar %#x failed to allocate\n",
       pci_get_domain(dev), pci_get_bus(dev),
       pci_get_slot(dev), pci_get_function(dev), reg);
 } else {
  start = rman_get_start(res);
  pci_write_bar(dev, pm, start);
 }
 return (barlen);
}
