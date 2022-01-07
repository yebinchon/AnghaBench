
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct resource {int dummy; } ;
struct generic_pcie_core_softc {TYPE_1__* ranges; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ phys_base; scalar_t__ pci_base; } ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int ENXIO ;
 int MAX_RANGES_TUPLES ;



 int device_get_parent (int ) ;
 struct generic_pcie_core_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,char*) ;
 int rman_activate_resource (struct resource*) ;
 scalar_t__ rman_get_end (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_set_end (struct resource*,scalar_t__) ;
 int rman_set_start (struct resource*,scalar_t__) ;

__attribute__((used)) static int
generic_pcie_activate_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 struct generic_pcie_core_softc *sc;
 uint64_t phys_base;
 uint64_t pci_base;
 uint64_t size;
 int found;
 int res;
 int i;

 sc = device_get_softc(dev);

 if ((res = rman_activate_resource(r)) != 0)
  return (res);

 switch (type) {
 case 130:
 case 128:
  found = 0;
  for (i = 0; i < MAX_RANGES_TUPLES; i++) {
   pci_base = sc->ranges[i].pci_base;
   phys_base = sc->ranges[i].phys_base;
   size = sc->ranges[i].size;

   if ((rman_get_start(r) >= pci_base) && (rman_get_start(r) < (pci_base + size))) {
    found = 1;
    break;
   }
  }
  if (found) {
   rman_set_start(r, rman_get_start(r) - pci_base + phys_base);
   rman_set_end(r, rman_get_end(r) - pci_base + phys_base);
   res = BUS_ACTIVATE_RESOURCE(device_get_parent(dev),
       child, type, rid, r);
  } else {
   device_printf(dev,
       "Failed to activate %s resource\n",
       type == 130 ? "IOPORT" : "MEMORY");
   res = ENXIO;
  }
  break;
 case 129:
  res = BUS_ACTIVATE_RESOURCE(device_get_parent(dev), child,
      type, rid, r);
  break;
 default:
  break;
 }

 return (res);
}
