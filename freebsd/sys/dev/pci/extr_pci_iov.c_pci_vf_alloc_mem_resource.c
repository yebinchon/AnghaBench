
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
struct pcicfg_iov {int rman; } ;
struct pci_map {int pm_size; scalar_t__ pm_value; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {int resources; TYPE_1__ cfg; } ;
typedef scalar_t__ rman_res_t ;
typedef int pci_addr_t ;
typedef int device_t ;


 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_activate_resource (int ,int ,int,struct resource*) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 struct pci_map* pci_find_bar (int ,int) ;
 struct resource_list_entry* resource_list_add (int *,int ,int,scalar_t__,scalar_t__,int) ;
 int resource_list_delete (int *,int ,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (int *,scalar_t__,scalar_t__,int,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

struct resource *
pci_vf_alloc_mem_resource(device_t dev, device_t child, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct pci_devinfo *dinfo;
 struct pcicfg_iov *iov;
 struct pci_map *map;
 struct resource *res;
 struct resource_list_entry *rle;
 rman_res_t bar_start, bar_end;
 pci_addr_t bar_length;
 int error;

 dinfo = device_get_ivars(child);
 iov = dinfo->cfg.iov;

 map = pci_find_bar(child, *rid);
 if (map == ((void*)0))
  return (((void*)0));

 bar_length = 1 << map->pm_size;
 bar_start = map->pm_value;
 bar_end = bar_start + bar_length - 1;


 if (bar_start >= end || bar_end <= bar_start || count != 1)
  return (((void*)0));


 if (bar_start < start)
  bar_start = start;
 if (bar_end > end)
  bar_end = end;
 bar_length = bar_end - bar_start + 1;

 res = rman_reserve_resource(&iov->rman, bar_start, bar_end,
     bar_length, flags, child);
 if (res == ((void*)0))
  return (((void*)0));

 rle = resource_list_add(&dinfo->resources, SYS_RES_MEMORY, *rid,
     bar_start, bar_end, 1);
 if (rle == ((void*)0)) {
  rman_release_resource(res);
  return (((void*)0));
 }

 rman_set_rid(res, *rid);

 if (flags & RF_ACTIVE) {
  error = bus_activate_resource(child, SYS_RES_MEMORY, *rid, res);
  if (error != 0) {
   resource_list_delete(&dinfo->resources, SYS_RES_MEMORY,
       *rid);
   rman_release_resource(res);
   return (((void*)0));
  }
 }
 rle->res = res;

 return (res);
}
