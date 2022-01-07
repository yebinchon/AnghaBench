
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebus_softc {int sc_nrange; int sc_range; int sc_ign; } ;
struct ebus_nexus_ranges {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_getprop (int ,char*,int *,int) ;
 int OF_getprop_alloc_multi (int ,char*,int,int *) ;
 struct ebus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ebus_attach (int ,struct ebus_softc*,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
ebus_nexus_attach(device_t dev)
{
 struct ebus_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);


 if (OF_getprop(node, "portid", &sc->sc_ign,
     sizeof(sc->sc_ign)) == -1) {
  device_printf(dev, "could not determine IGN");
  return (ENXIO);
 }


 sc->sc_nrange = OF_getprop_alloc_multi(node, "ranges",
     sizeof(struct ebus_nexus_ranges), &sc->sc_range);
 if (sc->sc_nrange == -1) {
  device_printf(dev, "could not get ranges property\n");
  return (ENXIO);
 }
 return (ebus_attach(dev, sc, node));
}
