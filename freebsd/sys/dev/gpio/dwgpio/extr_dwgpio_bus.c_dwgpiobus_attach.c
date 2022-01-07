
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwgpiobus_softc {int res; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_child (int) ;
 int OF_peer (int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct dwgpiobus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dwgpio_spec ;
 int ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,int,int ,int *,int,int *) ;
 int simplebus_init (int ,int) ;

__attribute__((used)) static int
dwgpiobus_attach(device_t dev)
{
 struct dwgpiobus_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(dev);
 if (node == -1)
  return (ENXIO);

 if (bus_alloc_resources(dev, dwgpio_spec, sc->res)) {
  device_printf(dev, "Could not allocate resources.\n");
  return (ENXIO);
 }

 simplebus_init(dev, node);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 return (bus_generic_attach(dev));
}
