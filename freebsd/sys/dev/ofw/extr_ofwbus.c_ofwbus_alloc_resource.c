
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; struct resource* res; } ;
struct resource {int dummy; } ;
struct ofwbus_softc {struct rman sc_mem_rman; struct rman sc_intr_rman; } ;
typedef scalar_t__ rman_res_t ;
typedef scalar_t__ device_t ;


 int BUS_GET_RESOURCE_LIST (scalar_t__,scalar_t__) ;
 int RF_ACTIVE ;
 int RMAN_IS_DEFAULT_RANGE (scalar_t__,scalar_t__) ;


 scalar_t__ bootverbose ;
 scalar_t__ bus_activate_resource (scalar_t__,int,int,struct resource*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct ofwbus_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int,int) ;
 struct resource_list_entry* resource_list_find (int ,int,int) ;
 scalar_t__ rman_get_end (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ;
 int rman_set_rid (struct resource*,int) ;
 scalar_t__ ummax (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct resource *
ofwbus_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct ofwbus_softc *sc;
 struct rman *rm;
 struct resource *rv;
 struct resource_list_entry *rle;
 int isdefault, passthrough;

 isdefault = RMAN_IS_DEFAULT_RANGE(start, end);
 passthrough = (device_get_parent(child) != bus);
 sc = device_get_softc(bus);
 rle = ((void*)0);
 if (!passthrough && isdefault) {
  rle = resource_list_find(BUS_GET_RESOURCE_LIST(bus, child),
      type, *rid);
  if (rle == ((void*)0)) {
   if (bootverbose)
    device_printf(bus, "no default resources for "
        "rid = %d, type = %d\n", *rid, type);
   return (((void*)0));
  }
  start = rle->start;
  count = ummax(count, rle->count);
  end = ummax(rle->end, start + count - 1);
 }

 switch (type) {
 case 129:
  rm = &sc->sc_intr_rman;
  break;
 case 128:
  rm = &sc->sc_mem_rman;
  break;
 default:
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags & ~RF_ACTIVE,
     child);
 if (rv == ((void*)0))
  return (((void*)0));
 rman_set_rid(rv, *rid);

 if ((flags & RF_ACTIVE) != 0 && bus_activate_resource(child, type,
     *rid, rv) != 0) {
  rman_release_resource(rv);
  return (((void*)0));
 }

 if (!passthrough && rle != ((void*)0)) {
  rle->res = rv;
  rle->start = rman_get_start(rv);
  rle->end = rman_get_end(rv);
  rle->count = rle->end - rle->start + 1;
 }

 return (rv);
}
