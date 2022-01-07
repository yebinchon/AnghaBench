
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct gt_pci_softc {int sc_io; struct rman sc_io_rman; int sc_mem; struct rman sc_mem_rman; struct rman sc_irq_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int RF_ACTIVE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct gt_pci_softc* device_get_softc (int ) ;
 int gt_pci_bus_space ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
gt_pci_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct gt_pci_softc *sc = device_get_softc(bus);
 struct resource *rv = ((void*)0);
 struct rman *rm;
 bus_space_handle_t bh = 0;

 switch (type) {
 case 129:
  rm = &sc->sc_irq_rman;
  break;
 case 128:
  rm = &sc->sc_mem_rman;
  bh = sc->sc_mem;
  break;
 case 130:
  rm = &sc->sc_io_rman;
  bh = sc->sc_io;
  break;
 default:
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return (((void*)0));
 rman_set_rid(rv, *rid);
 if (type != 129) {
  bh += (rman_get_start(rv));

  rman_set_bustag(rv, gt_pci_bus_space);
  rman_set_bushandle(rv, bh);
  if (flags & RF_ACTIVE) {
   if (bus_activate_resource(child, type, *rid, rv)) {
    rman_release_resource(rv);
    return (((void*)0));
   }
  }
 }
 return (rv);
}
