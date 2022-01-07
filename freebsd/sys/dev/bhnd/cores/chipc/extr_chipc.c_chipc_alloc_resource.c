
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int count; struct resource* res; } ;
struct resource {int dummy; } ;
struct chipc_softc {struct chipc_region* core_region; } ;
struct chipc_region {scalar_t__ cr_addr; scalar_t__ cr_end; scalar_t__ cr_count; } ;
typedef scalar_t__ rman_res_t ;
typedef scalar_t__ device_t ;


 int BUS_GET_RESOURCE_LIST (scalar_t__,scalar_t__) ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int RMAN_IS_DEFAULT_RANGE (scalar_t__,scalar_t__) ;
 int bus_activate_resource (scalar_t__,int,int,struct resource*) ;
 struct resource* bus_generic_rl_alloc_resource (scalar_t__,scalar_t__,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ;
 struct chipc_region* chipc_find_region (struct chipc_softc*,scalar_t__,scalar_t__) ;
 struct rman* chipc_get_rman (struct chipc_softc*,int) ;
 int chipc_release_region (struct chipc_softc*,struct chipc_region*,int ) ;
 int chipc_retain_region (struct chipc_softc*,struct chipc_region*,int ) ;
 int device_get_nameunit (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct chipc_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int,int,int ,...) ;
 struct resource_list_entry* resource_list_find (int ,int,int) ;
 scalar_t__ rman_get_end (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ;
 int rman_set_rid (struct resource*,int) ;
 scalar_t__ ulmax (scalar_t__,int ) ;

__attribute__((used)) static struct resource *
chipc_alloc_resource(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct chipc_softc *sc;
 struct chipc_region *cr;
 struct resource_list_entry *rle;
 struct resource *rv;
 struct rman *rm;
 int error;
 bool passthrough, isdefault;

 sc = device_get_softc(dev);
 passthrough = (device_get_parent(child) != dev);
 isdefault = RMAN_IS_DEFAULT_RANGE(start, end);
 rle = ((void*)0);


 rm = chipc_get_rman(sc, type);
 if (rm == ((void*)0)) {

  rv = bus_generic_rl_alloc_resource(dev, child, type, rid,
      start, end, count, flags);
  return (rv);
 }


 if (!passthrough && isdefault) {

  rle = resource_list_find(BUS_GET_RESOURCE_LIST(dev, child),
      type, *rid);
  if (rle == ((void*)0)) {
   device_printf(dev,
       "default resource %#x type %d for child %s "
       "not found\n", *rid, type,
       device_get_nameunit(child));
   return (((void*)0));
  }

  if (rle->res != ((void*)0)) {
   device_printf(dev,
       "resource entry %#x type %d for child %s is busy "
       "[%d]\n",
       *rid, type, device_get_nameunit(child),
       rman_get_flags(rle->res));

   return (((void*)0));
  }

  start = rle->start;
  end = rle->end;
  count = ulmax(count, rle->count);
 }


 if ((cr = chipc_find_region(sc, start, end)) == ((void*)0)) {


  rv = bus_generic_rl_alloc_resource(dev, child, type, rid,
      start, end, count, flags);
  return (rv);
 }
 if (cr == sc->core_region && cr->cr_addr == start &&
     cr->cr_end == end && cr->cr_count == count)
 {
  rv = bus_generic_rl_alloc_resource(dev, child, type, rid,
      start, end, count, flags);
  return (rv);
 }


 if ((error = chipc_retain_region(sc, cr, RF_ALLOCATED)))
  return (((void*)0));


 rv = rman_reserve_resource(rm, start, end, count, flags & ~RF_ACTIVE,
     child);
 if (rv == ((void*)0)) {
  chipc_release_region(sc, cr, RF_ALLOCATED);
  return (((void*)0));
 }

 rman_set_rid(rv, *rid);


 if (flags & RF_ACTIVE) {
  error = bus_activate_resource(child, type, *rid, rv);
  if (error) {
   device_printf(dev,
       "failed to activate entry %#x type %d for "
    "child %s: %d\n",
        *rid, type, device_get_nameunit(child), error);

   chipc_release_region(sc, cr, RF_ALLOCATED);
   rman_release_resource(rv);

   return (((void*)0));
  }
 }


 if (rle != ((void*)0)) {
  rle->res = rv;
  rle->start = rman_get_start(rv);
  rle->end = rman_get_end(rv);
  rle->count = rman_get_size(rv);
 }

 return (rv);
}
