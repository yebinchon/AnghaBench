
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int res; } ;
struct resource {int dummy; } ;
struct pccard_ivar {int resources; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,int ) ;
 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int ENOENT ;
 struct pccard_ivar* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_device (int ,int ) ;

__attribute__((used)) static int
pccard_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct pccard_ivar *dinfo;
 int passthrough = (device_get_parent(child) != dev);
 struct resource_list_entry *rle = ((void*)0);

 if (passthrough)
  return BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
      type, rid, r);

 dinfo = device_get_ivars(child);

 rle = resource_list_find(&dinfo->resources, type, rid);

 if (!rle) {
  device_printf(dev, "Allocated resource not found, "
      "%d %#x %#jx %#jx\n",
      type, rid, rman_get_start(r), rman_get_size(r));
  return ENOENT;
 }
 if (!rle->res) {
  device_printf(dev, "Allocated resource not recorded\n");
  return ENOENT;
 }




 BUS_DEACTIVATE_RESOURCE(dev, child, type, rid, rle->res);
 rman_set_device(rle->res, dev);
 return (0);
}
