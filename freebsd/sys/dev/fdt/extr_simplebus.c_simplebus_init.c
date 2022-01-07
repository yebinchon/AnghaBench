
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_softc {int acells; int scells; scalar_t__ node; int dev; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int OF_getencprop (scalar_t__,char*,int*,int) ;
 struct simplebus_softc* device_get_softc (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;

void
simplebus_init(device_t dev, phandle_t node)
{
 struct simplebus_softc *sc;

 sc = device_get_softc(dev);
 if (node == 0)
  node = ofw_bus_get_node(dev);
 sc->dev = dev;
 sc->node = node;




 sc->acells = 2;
 OF_getencprop(node, "#address-cells", &sc->acells, sizeof(sc->acells));
 sc->scells = 1;
 OF_getencprop(node, "#size-cells", &sc->scells, sizeof(sc->scells));
}
