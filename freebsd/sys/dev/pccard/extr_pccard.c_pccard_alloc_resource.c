
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
struct pccard_ivar {int resources; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int BUS_ACTIVATE_RESOURCE (scalar_t__,scalar_t__,int,int,struct resource*) ;
 struct resource* BUS_ALLOC_RESOURCE (scalar_t__,scalar_t__,int,int*,int,int,int,int) ;
 int RF_ACTIVE ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (int,int) ;
 struct resource* bus_alloc_resource (scalar_t__,int,int*,int,int,int,int) ;
 struct pccard_ivar* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int device_printf (scalar_t__,char*) ;
 int resource_list_add (int *,int,int,int ,int ,int) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;
 scalar_t__ rman_get_device (struct resource*) ;
 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_device (struct resource*,scalar_t__) ;

__attribute__((used)) static struct resource *
pccard_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct pccard_ivar *dinfo;
 struct resource_list_entry *rle = ((void*)0);
 int passthrough = (device_get_parent(child) != dev);
 int isdefault = (RMAN_IS_DEFAULT_RANGE(start, end) && count == 1);
 struct resource *r = ((void*)0);


 if (passthrough) {
  return (BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
      type, rid, start, end, count, flags));
 }

 dinfo = device_get_ivars(child);
 rle = resource_list_find(&dinfo->resources, type, *rid);

 if (rle == ((void*)0) && isdefault)
  return (((void*)0));
 if (rle == ((void*)0) || rle->res == ((void*)0)) {

  r = bus_alloc_resource(dev, type, rid, start, end,
    count, flags);
  if (r == ((void*)0))
      goto bad;
  resource_list_add(&dinfo->resources, type, *rid,
    rman_get_start(r), rman_get_end(r), count);
  rle = resource_list_find(&dinfo->resources, type, *rid);
  if (!rle)
      goto bad;
  rle->res = r;
 }




 if (rman_get_device(rle->res) != dev)
  return (((void*)0));
 rman_set_device(rle->res, child);
 if (flags & RF_ACTIVE)
  BUS_ACTIVATE_RESOURCE(dev, child, type, *rid, rle->res);
 return (rle->res);
bad:;
 device_printf(dev, "WARNING: Resource not reserved by pccard\n");
 return (((void*)0));
}
