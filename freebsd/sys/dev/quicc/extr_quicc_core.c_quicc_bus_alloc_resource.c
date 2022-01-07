
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {struct resource* res; scalar_t__ start; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct quicc_device {int qd_rman; int qd_rlist; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 int RMAN_IS_DEFAULT_RANGE (int ,int ) ;
 int bs_be_tag ;
 struct quicc_device* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;
 struct resource* rman_reserve_resource (int ,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int rman_set_bushandle (struct resource*,scalar_t__) ;
 int rman_set_bustag (struct resource*,int *) ;

struct resource *
quicc_bus_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct quicc_device *qd;
 struct resource_list_entry *rle;

 if (device_get_parent(child) != dev)
  return (((void*)0));


 if (!RMAN_IS_DEFAULT_RANGE(start, end))
  return (((void*)0));

 qd = device_get_ivars(child);
 rle = resource_list_find(&qd->qd_rlist, type, *rid);
 if (rle == ((void*)0))
  return (((void*)0));

 if (rle->res == ((void*)0)) {
  rle->res = rman_reserve_resource(qd->qd_rman, rle->start,
      rle->start + rle->count - 1, rle->count, flags, child);
  if (rle->res != ((void*)0)) {
   rman_set_bustag(rle->res, &bs_be_tag);
   rman_set_bushandle(rle->res, rle->start);
  }
 }
 return (rle->res);
}
