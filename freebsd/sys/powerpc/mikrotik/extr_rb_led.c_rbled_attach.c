
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbled_softc {int * sc_led; int sc_ledpin; int * sc_gpio; } ;
typedef int phandle_t ;
typedef int gp ;
typedef int device_t ;
typedef int cell_t ;


 int ENXIO ;
 int * OF_device_from_xref (int ) ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 struct rbled_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * led_create (int ,struct rbled_softc*,char*) ;
 int ofw_bus_get_node (int ) ;
 int rbled_toggle ;

__attribute__((used)) static int
rbled_attach(device_t dev)
{
 struct rbled_softc *sc;
 phandle_t node;
 cell_t gp[2];

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 if (OF_getprop(node, "user_led", gp, sizeof(gp)) <= 0)
  return (ENXIO);

 sc->sc_gpio = OF_device_from_xref(gp[0]);
 if (sc->sc_gpio == ((void*)0)) {
  device_printf(dev, "No GPIO resource found!\n");
  return (ENXIO);
 }
 sc->sc_ledpin = gp[1];

 sc->sc_led = led_create(rbled_toggle, sc, "user_led");

 if (sc->sc_led == ((void*)0))
  return (ENXIO);

 return (0);
}
