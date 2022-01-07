
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {scalar_t__ res; } ;
struct resource_list {int dummy; } ;
struct pci_devinfo {struct resource_list resources; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int,int,int ) ;
 scalar_t__ resource_list_busy (struct resource_list*,int,int) ;
 int resource_list_delete (struct resource_list*,int,int) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;
 int resource_list_unreserve (struct resource_list*,int ,int ,int,int) ;
 int rman_get_flags (scalar_t__) ;
 int rman_get_start (scalar_t__) ;

void
pci_delete_resource(device_t dev, device_t child, int type, int rid)
{
 struct pci_devinfo *dinfo;
 struct resource_list *rl;
 struct resource_list_entry *rle;

 if (device_get_parent(child) != dev)
  return;

 dinfo = device_get_ivars(child);
 rl = &dinfo->resources;
 rle = resource_list_find(rl, type, rid);
 if (rle == ((void*)0))
  return;

 if (rle->res) {
  if (rman_get_flags(rle->res) & RF_ACTIVE ||
      resource_list_busy(rl, type, rid)) {
   device_printf(dev, "delete_resource: "
       "Resource still owned by child, oops. "
       "(type=%d, rid=%d, addr=%jx)\n",
       type, rid, rman_get_start(rle->res));
   return;
  }
  resource_list_unreserve(rl, dev, child, type, rid);
 }
 resource_list_delete(rl, type, rid);
}
