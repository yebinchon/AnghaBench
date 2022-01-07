
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct iobus_softc {struct rman sc_mem_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int RF_ACTIVE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct resource* bus_alloc_resource (int ,int,int*,int ,int ,int ,int) ;
 int device_get_nameunit (int ) ;
 struct iobus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
iobus_alloc_resource(device_t bus, device_t child, int type, int *rid,
       rman_res_t start, rman_res_t end, rman_res_t count,
       u_int flags)
{
 struct iobus_softc *sc;
 int needactivate;
 struct resource *rv;
 struct rman *rm;

 sc = device_get_softc(bus);

 needactivate = flags & RF_ACTIVE;
 flags &= ~RF_ACTIVE;

 switch (type) {
 case 128:
 case 130:
  rm = &sc->sc_mem_rman;
  break;
 case 129:
  return (bus_alloc_resource(bus, type, rid, start, end, count,
      flags));
 default:
  device_printf(bus, "unknown resource request from %s\n",
      device_get_nameunit(child));
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0)) {
  device_printf(bus, "failed to reserve resource for %s\n",
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
