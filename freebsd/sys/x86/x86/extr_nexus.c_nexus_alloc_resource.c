
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {int start; int end; int count; } ;
struct resource {int dummy; } ;
struct nexus_device {int nx_resources; } ;
typedef int rman_res_t ;
typedef scalar_t__ device_t ;


 struct nexus_device* DEVTONX (scalar_t__) ;
 int RF_ACTIVE ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (int,int) ;
 scalar_t__ bus_activate_resource (scalar_t__,int,int,struct resource*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct rman* nexus_rman (int) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int,int,int,int,scalar_t__) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
nexus_alloc_resource(device_t bus, device_t child, int type, int *rid,
       rman_res_t start, rman_res_t end, rman_res_t count,
       u_int flags)
{
 struct nexus_device *ndev = DEVTONX(child);
 struct resource *rv;
 struct resource_list_entry *rle;
 struct rman *rm;
 int needactivate = flags & RF_ACTIVE;







 if (RMAN_IS_DEFAULT_RANGE(start, end) && (count == 1)) {
  if (device_get_parent(child) != bus || ndev == ((void*)0))
   return(((void*)0));
  rle = resource_list_find(&ndev->nx_resources, type, *rid);
  if (rle == ((void*)0))
   return(((void*)0));
  start = rle->start;
  end = rle->end;
  count = rle->count;
 }

 flags &= ~RF_ACTIVE;
 rm = nexus_rman(type);
 if (rm == ((void*)0))
  return (((void*)0));

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return 0;
 rman_set_rid(rv, *rid);

 if (needactivate) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return 0;
  }
 }

 return rv;
}
