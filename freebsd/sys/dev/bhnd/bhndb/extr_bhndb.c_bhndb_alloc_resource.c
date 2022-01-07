
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {int count; scalar_t__ end; scalar_t__ start; struct resource* res; } ;
struct resource {int dummy; } ;
struct bhndb_softc {int parent_dev; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int BUS_GET_RESOURCE_LIST (int ,int ) ;
 int RF_ACTIVE ;
 int RMAN_IS_DEFAULT_RANGE (scalar_t__,scalar_t__) ;
 struct rman* bhndb_get_rman (struct bhndb_softc*,int ,int) ;
 int bus_activate_resource (int ,int,int,struct resource*) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int ,...) ;
 struct resource_list_entry* resource_list_find (int ,int,int) ;
 scalar_t__ rman_get_end (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 int rman_set_rid (struct resource*,int) ;
 scalar_t__ ulmax (scalar_t__,int ) ;

__attribute__((used)) static struct resource *
bhndb_alloc_resource(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct bhndb_softc *sc;
 struct resource_list_entry *rle;
 struct resource *rv;
 struct rman *rm;
 int error;
 bool passthrough, isdefault;

 sc = device_get_softc(dev);
 passthrough = (device_get_parent(child) != dev);
 isdefault = RMAN_IS_DEFAULT_RANGE(start, end);
 rle = ((void*)0);


 rm = bhndb_get_rman(sc, child, type);
 if (rm == ((void*)0)) {


  return (BUS_ALLOC_RESOURCE(device_get_parent(sc->parent_dev),
      child, type, rid, start, end, count, flags));
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
       "resource entry %#x type %d for child %s is busy\n",
       *rid, type, device_get_nameunit(child));

   return (((void*)0));
  }

  start = rle->start;
  end = rle->end;
  count = ulmax(count, rle->count);
 }


 if (start > end || count > ((end - start) + 1))
  return (((void*)0));


 rv = rman_reserve_resource(rm, start, end, count, flags & ~RF_ACTIVE,
     child);
 if (rv == ((void*)0))
  return (((void*)0));

 rman_set_rid(rv, *rid);


 if (flags & RF_ACTIVE) {
  error = bus_activate_resource(child, type, *rid, rv);
  if (error) {
   device_printf(dev,
       "failed to activate entry %#x type %d for "
    "child %s: %d\n",
        *rid, type, device_get_nameunit(child), error);

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
