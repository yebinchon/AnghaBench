
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sy8106a_softc {int * reg; int addr; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 struct sy8106a_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int ofw_bus_get_node (int ) ;
 int * sy8106a_reg_attach (int ,int ) ;

__attribute__((used)) static int
sy8106a_attach(device_t dev)
{
 struct sy8106a_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 sc->addr = iicbus_get_addr(dev);

 sc->reg = sy8106a_reg_attach(dev, node);
 if (sc->reg == ((void*)0)) {
  device_printf(dev, "cannot attach regulator\n");
  return (ENXIO);
 }

 return (0);
}
