
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct obio_softc {int oba_addr; int oba_st; struct rman oba_rman; struct rman oba_irq_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;





 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct obio_softc* device_get_softc (int ) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int ,int ) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
obio_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource *rv;
 struct rman *rm;
 bus_space_tag_t bt = 0;
 bus_space_handle_t bh = 0;
 struct obio_softc *sc = device_get_softc(bus);

 switch (type) {
 case 129:
  rm = &sc->oba_irq_rman;
  break;
 case 128:
  return (((void*)0));
 case 130:
  rm = &sc->oba_rman;
  bt = sc->oba_st;
  bh = sc->oba_addr;
  start = bh;
  break;
 default:
  return (((void*)0));
 }


 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return (((void*)0));
 if (type == 129)
  return (rv);
 rman_set_rid(rv, *rid);
 rman_set_bustag(rv, bt);
 rman_set_bushandle(rv, bh);

 if (0) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return (((void*)0));
  }
 }
 return (rv);

}
