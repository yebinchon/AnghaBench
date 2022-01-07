
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct ofw_pci_softc {struct rman sc_pci_io_rman; struct rman sc_pci_mem_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int EINVAL ;



 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;
 scalar_t__ rman_is_region_manager (struct resource*,struct rman*) ;

int
ofw_pci_adjust_resource(device_t bus, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct ofw_pci_softc *sc;
 struct rman *rm;

 sc = device_get_softc(bus);
 switch (type) {
 case 129:
  return (bus_generic_adjust_resource(bus, child, type, r,
      start, end));
 case 128:
  rm = &sc->sc_pci_mem_rman;
  break;
 case 130:
  rm = &sc->sc_pci_io_rman;
  break;
 default:
  return (EINVAL);
 }
 if (rman_is_region_manager(r, rm) == 0)
  return (EINVAL);
 return (rman_adjust_resource(r, start, end));
}
