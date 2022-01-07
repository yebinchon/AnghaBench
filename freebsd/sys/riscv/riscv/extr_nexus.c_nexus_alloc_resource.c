
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {int start; int end; int count; } ;
struct resource {int dummy; } ;
struct nexus_device {int nx_resources; } ;
typedef scalar_t__ device_t ;


 struct nexus_device* DEVTONX (scalar_t__) ;
 int RF_ACTIVE ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (int,int) ;



 scalar_t__ bus_activate_resource (scalar_t__,int,int,struct resource*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct rman irq_rman ;
 struct rman mem_rman ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;
 int rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int,int,int,int,scalar_t__) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
nexus_alloc_resource(device_t bus, device_t child, int type, int *rid,
    u_long start, u_long end, u_long count, u_int flags)
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

 switch (type) {
 case 129:
  rm = &irq_rman;
  break;

 case 128:
 case 130:
  rm = &mem_rman;
  break;

 default:
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return (((void*)0));

 rman_set_rid(rv, *rid);
 rman_set_bushandle(rv, rman_get_start(rv));

 if (needactivate) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return (((void*)0));
  }
 }

 return (rv);
}
