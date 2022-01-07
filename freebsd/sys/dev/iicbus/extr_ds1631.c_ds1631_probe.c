
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1631_softc {int sc_addr; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 struct ds1631_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ds1631_probe(device_t dev)
{
 const char *name, *compatible;
 struct ds1631_softc *sc;

 name = ofw_bus_get_name(dev);
 compatible = ofw_bus_get_compat(dev);

 if (!name)
  return (ENXIO);

 if (strcmp(name, "temp-monitor") != 0 ||
     strcmp(compatible, "ds1631") != 0 )
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);

 device_set_desc(dev, "Temp-Monitor DS1631");

 return (0);
}
