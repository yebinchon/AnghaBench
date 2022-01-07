
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic_softc {int sc_psim; } ;
typedef int device_t ;


 int ENXIO ;
 int OPENPIC_DEVSTR ;
 struct openpic_softc* device_get_softc (int ) ;
 int device_set_desc (int ,int ) ;
 char* iobus_get_name (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
openpic_iobus_probe(device_t dev)
{
 struct openpic_softc *sc;
 char *name;

 name = iobus_get_name(dev);
 if (strcmp(name, "interrupt-controller") != 0)
  return (ENXIO);





 device_set_desc(dev, OPENPIC_DEVSTR);

 sc = device_get_softc(dev);
 sc->sc_psim = 1;

 return (0);
}
