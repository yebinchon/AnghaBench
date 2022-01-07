
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_softc {int node; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_child (int ) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int ) ;
 struct simplebus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int simplebus_add_device (int ,scalar_t__,int ,int *,int,int *) ;
 scalar_t__ simplebus_fill_ranges (int ,struct simplebus_softc*) ;
 int simplebus_init (int ,int ) ;

__attribute__((used)) static int
simplebus_attach(device_t dev)
{
 struct simplebus_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 simplebus_init(dev, 0);
 if (simplebus_fill_ranges(sc->node, sc) < 0) {
  device_printf(dev, "could not get ranges\n");
  return (ENXIO);
 }






 for (node = OF_child(sc->node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));
 return (bus_generic_attach(dev));
}
