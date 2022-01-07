
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int count; } ;
struct resource {int dummy; } ;
struct ps3bus_softc {struct rman sc_intr_rman; struct rman sc_mem_rman; } ;
struct ps3bus_devinfo {int resources; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int RF_ACTIVE ;


 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct ps3bus_devinfo* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct ps3bus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,...) ;
 struct resource_list_entry* resource_list_find (int *,int const,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 int rman_set_rid (struct resource*,int) ;
 scalar_t__ ulmax (scalar_t__,int ) ;

__attribute__((used)) static struct resource *
ps3bus_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct ps3bus_devinfo *dinfo;
 struct ps3bus_softc *sc;
 int needactivate;
        struct resource *rv;
        struct rman *rm;
        rman_res_t adjstart, adjend, adjcount;
        struct resource_list_entry *rle;

 sc = device_get_softc(bus);
 dinfo = device_get_ivars(child);
 needactivate = flags & RF_ACTIVE;
 flags &= ~RF_ACTIVE;

 switch (type) {
 case 128:
  rle = resource_list_find(&dinfo->resources, 128,
      *rid);
  if (rle == ((void*)0)) {
   device_printf(bus, "no rle for %s memory %d\n",
          device_get_nameunit(child), *rid);
   return (((void*)0));
  }

  if (start < rle->start)
   adjstart = rle->start;
  else if (start > rle->end)
   adjstart = rle->end;
  else
   adjstart = start;

  if (end < rle->start)
   adjend = rle->start;
  else if (end > rle->end)
   adjend = rle->end;
  else
   adjend = end;

  adjcount = adjend - adjstart;

  rm = &sc->sc_mem_rman;
  break;
 case 129:
  rle = resource_list_find(&dinfo->resources, 129,
      *rid);
  rm = &sc->sc_intr_rman;
  adjstart = rle->start;
  adjcount = ulmax(count, rle->count);
  adjend = ulmax(rle->end, rle->start + adjcount - 1);
  break;
 default:
  device_printf(bus, "unknown resource request from %s\n",
         device_get_nameunit(child));
  return (((void*)0));
        }

 rv = rman_reserve_resource(rm, adjstart, adjend, adjcount, flags,
     child);
 if (rv == ((void*)0)) {
  device_printf(bus,
   "failed to reserve resource %#lx - %#lx (%#lx)"
   " for %s\n", adjstart, adjend, adjcount,
   device_get_nameunit(child));
  return (((void*)0));
 }

 rman_set_rid(rv, *rid);

 if (needactivate) {
  if (bus_activate_resource(child, type, *rid, rv) != 0) {
   device_printf(bus,
    "failed to activate resource for %s\n",
    device_get_nameunit(child));
    rman_release_resource(rv);
   return (((void*)0));
  }
 }

 return (rv);
}
