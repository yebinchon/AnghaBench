
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct octopci_softc {scalar_t__ sc_io_base; scalar_t__ sc_mem1_base; struct rman sc_io; struct rman sc_mem1; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int RF_ACTIVE ;



 int bus_activate_resource (int ,int,int,struct resource*) ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int) ;
 struct octopci_softc* device_get_softc (int ) ;
 int octopci_bus_space ;
 scalar_t__ rman_get_bushandle (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_bushandle (struct resource*,scalar_t__) ;
 int rman_set_bustag (struct resource*,int ) ;
 int rman_set_rid (struct resource*,int) ;
 int rman_set_virtual (struct resource*,void*) ;

__attribute__((used)) static struct resource *
octopci_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct octopci_softc *sc;
 struct resource *res;
 struct rman *rm;
 int error;

 sc = device_get_softc(bus);

 switch (type) {
 case 129:
  res = bus_generic_alloc_resource(bus, child, type, rid, start,
      end, count, flags);
  if (res != ((void*)0))
   return (res);
  return (((void*)0));
 case 128:
  rm = &sc->sc_mem1;
  break;
 case 130:
  rm = &sc->sc_io;
  break;
 default:
  return (((void*)0));
 }

 res = rman_reserve_resource(rm, start, end, count, flags, child);
 if (res == ((void*)0))
  return (((void*)0));

 rman_set_rid(res, *rid);
 rman_set_bustag(res, octopci_bus_space);

 switch (type) {
 case 128:
  rman_set_bushandle(res, sc->sc_mem1_base + rman_get_start(res));
  break;
 case 130:
  rman_set_bushandle(res, sc->sc_io_base + rman_get_start(res));







  rman_set_virtual(res, ((void*)0));

  break;
 }

 if ((flags & RF_ACTIVE) != 0) {
  error = bus_activate_resource(child, type, *rid, res);
  if (error != 0) {
   rman_release_resource(res);
   return (((void*)0));
  }
 }

 return (res);
}
