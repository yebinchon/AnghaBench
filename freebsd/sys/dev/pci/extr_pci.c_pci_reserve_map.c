
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pci_map {int pm_size; int pm_value; } ;
struct pci_devinfo {int cfg; struct resource_list resources; } ;
typedef int rman_res_t ;
typedef int pci_addr_t ;
typedef int device_t ;


 int PCIM_BAR_MEM_PREFETCH ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 scalar_t__ PCIR_IS_BIOS (int *,int) ;
 scalar_t__ PCI_BAR_MEM (int) ;
 int RF_ACTIVE ;
 int RF_ALIGNMENT (int) ;
 int RF_ALIGNMENT_LOG2 (int) ;
 int RF_ALIGNMENT_MASK ;
 int RF_PREFETCHABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int,int,int,...) ;
 struct pci_map* pci_add_bar (int ,int,int,int) ;
 scalar_t__ pci_ea_is_enabled (int ,int) ;
 struct pci_map* pci_find_bar (int ,int) ;
 int pci_mapsize (int) ;
 int pci_read_bar (int ,int,int*,int*,int *) ;
 int pci_read_config (int ,int ,int) ;
 int pci_romsize (int) ;
 int pci_write_bar (int ,struct pci_map*,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int resource_list_add (struct resource_list*,int,int,int,int,int) ;
 int resource_list_delete (struct resource_list*,int,int) ;
 struct resource* resource_list_reserve (struct resource_list*,int ,int ,int,int*,int,int,int,int) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static struct resource *
pci_reserve_map(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int num,
    u_int flags)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 struct resource_list *rl = &dinfo->resources;
 struct resource *res;
 struct pci_map *pm;
 uint16_t cmd;
 pci_addr_t map, testval;
 int mapsize;

 res = ((void*)0);


 if (pci_ea_is_enabled(child, *rid))
  goto out;

 pm = pci_find_bar(child, *rid);
 if (pm != ((void*)0)) {

  mapsize = pm->pm_size;
  map = pm->pm_value;
 } else {
  pci_read_bar(child, *rid, &map, &testval, ((void*)0));





  if (PCIR_IS_BIOS(&dinfo->cfg, *rid))
   mapsize = pci_romsize(testval);
  else
   mapsize = pci_mapsize(testval);
  if (mapsize == 0)
   goto out;
  pm = pci_add_bar(child, *rid, map, mapsize);
 }

 if (PCI_BAR_MEM(map) || PCIR_IS_BIOS(&dinfo->cfg, *rid)) {
  if (type != SYS_RES_MEMORY) {
   if (bootverbose)
    device_printf(dev,
        "child %s requested type %d for rid %#x,"
        " but the BAR says it is an memio\n",
        device_get_nameunit(child), type, *rid);
   goto out;
  }
 } else {
  if (type != SYS_RES_IOPORT) {
   if (bootverbose)
    device_printf(dev,
        "child %s requested type %d for rid %#x,"
        " but the BAR says it is an ioport\n",
        device_get_nameunit(child), type, *rid);
   goto out;
  }
 }
 count = ((pci_addr_t)1 << mapsize) * num;
 if (RF_ALIGNMENT(flags) < mapsize)
  flags = (flags & ~RF_ALIGNMENT_MASK) | RF_ALIGNMENT_LOG2(mapsize);
 if (PCI_BAR_MEM(map) && (map & PCIM_BAR_MEM_PREFETCH))
  flags |= RF_PREFETCHABLE;





 resource_list_add(rl, type, *rid, start, end, count);
 res = resource_list_reserve(rl, dev, child, type, rid, start, end,
     count, flags & ~RF_ACTIVE);
 if (res == ((void*)0)) {
  resource_list_delete(rl, type, *rid);
  device_printf(child,
      "%#jx bytes of rid %#x res %d failed (%#jx, %#jx).\n",
      count, *rid, type, start, end);
  goto out;
 }
 if (bootverbose)
  device_printf(child,
      "Lazy allocation of %#jx bytes rid %#x type %d at %#jx\n",
      count, *rid, type, rman_get_start(res));


 cmd = pci_read_config(child, PCIR_COMMAND, 2);
 pci_write_config(child, PCIR_COMMAND,
     cmd & ~(PCI_BAR_MEM(map) ? PCIM_CMD_MEMEN : PCIM_CMD_PORTEN), 2);

 map = rman_get_start(res);
 pci_write_bar(child, pm, map);


 pci_write_config(child, PCIR_COMMAND, cmd, 2);
out:
 return (res);
}
