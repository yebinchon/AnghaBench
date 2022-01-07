
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
typedef int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {void* start; void* end; } ;
struct resource {int dummy; } ;
struct macio_softc {struct rman sc_mem_rman; } ;
struct macio_devinfo {int mdi_ninterrupts; int mdi_resources; void** mdi_interrupts; } ;
typedef void* rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,void*,void*,void*,int) ;
 int RF_ACTIVE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct macio_devinfo* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct macio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,void*,...) ;
 int resource_list_add (int *,int const,int,void*,void*,int) ;
 struct resource* resource_list_alloc (int *,int ,int ,int,int*,void*,void*,void*,int) ;
 struct resource_list_entry* resource_list_find (int *,int const,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,void*,void*,void*,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
macio_alloc_resource(device_t bus, device_t child, int type, int *rid,
       rman_res_t start, rman_res_t end, rman_res_t count,
       u_int flags)
{
 struct macio_softc *sc;
 int needactivate;
 struct resource *rv;
 struct rman *rm;
 u_long adjstart, adjend, adjcount;
 struct macio_devinfo *dinfo;
 struct resource_list_entry *rle;

 sc = device_get_softc(bus);
 dinfo = device_get_ivars(child);

 needactivate = flags & RF_ACTIVE;
 flags &= ~RF_ACTIVE;

 switch (type) {
 case 128:
 case 130:
  rle = resource_list_find(&dinfo->mdi_resources, 128,
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

  if (device_get_parent(child) != bus)
   return BUS_ALLOC_RESOURCE(device_get_parent(bus), child,
       type, rid, start, end, count, flags);

  rle = resource_list_find(&dinfo->mdi_resources, 129,
      *rid);
  if (rle == ((void*)0)) {
   if (dinfo->mdi_ninterrupts >= 6) {
    device_printf(bus,
        "%s has more than 6 interrupts\n",
        device_get_nameunit(child));
    return (((void*)0));
   }
   resource_list_add(&dinfo->mdi_resources, 129,
       dinfo->mdi_ninterrupts, start, start, 1);

   dinfo->mdi_interrupts[dinfo->mdi_ninterrupts] = start;
   dinfo->mdi_ninterrupts++;
  }

  return (resource_list_alloc(&dinfo->mdi_resources, bus, child,
      type, rid, start, end, count, flags));

 default:
  device_printf(bus, "unknown resource request from %s\n",
         device_get_nameunit(child));
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, adjstart, adjend, adjcount, flags,
     child);
 if (rv == ((void*)0)) {
  device_printf(bus,
      "failed to reserve resource %#lx - %#lx (%#lx) for %s\n",
      adjstart, adjend, adjcount, device_get_nameunit(child));
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
