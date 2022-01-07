
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thermostat ;
struct adm1030_softc {int sc_addr; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 struct adm1030_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
adm1030_probe(device_t dev)
{
 const char *name, *compatible;
 struct adm1030_softc *sc;
 phandle_t handle;
 phandle_t thermostat;

 name = ofw_bus_get_name(dev);
 compatible = ofw_bus_get_compat(dev);
 handle = ofw_bus_get_node(dev);

 if (!name)
  return (ENXIO);

 if (strcmp(name, "fan") != 0 || strcmp(compatible, "adm1030") != 0)
  return (ENXIO);


 if (OF_getprop(handle, "platform-getTemp", &thermostat, sizeof(thermostat)) < 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);

 device_set_desc(dev, "G4 MDD Fan driver");

 return (0);
}
