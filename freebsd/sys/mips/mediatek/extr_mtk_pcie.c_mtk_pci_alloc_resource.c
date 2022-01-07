
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct mtk_pci_softc {struct rman sc_mem_rman; struct rman sc_io_rman; struct rman sc_irq_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;



 int RF_ACTIVE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 struct resource* pci_domain_alloc_bus (int ,int ,int*,int ,int ,int ,int) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
mtk_pci_alloc_resource(device_t bus, device_t child, int type, int *rid,
 rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct mtk_pci_softc *sc = device_get_softc(bus);
 struct resource *rv;
 struct rman *rm;

 switch (type) {
 case 131:
  return pci_domain_alloc_bus(0, child, rid, start, end, count,
         flags);
 case 129:
  rm = &sc->sc_irq_rman;
  break;
 case 130:
  rm = &sc->sc_io_rman;
  break;
 case 128:
  rm = &sc->sc_mem_rman;
  break;
 default:
  return (((void*)0));
 }

 rv = rman_reserve_resource(rm, start, end, count, flags, child);

 if (rv == ((void*)0))
  return (((void*)0));

 rman_set_rid(rv, *rid);

 if ((flags & RF_ACTIVE) && type != 129) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return (((void*)0));
  }
 }

 return (rv);
}
