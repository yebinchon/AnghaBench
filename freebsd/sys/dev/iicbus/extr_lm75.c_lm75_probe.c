
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm75_softc {int sc_hwtype; } ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int HWTYPE_LM75 ;
 struct lm75_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
lm75_probe(device_t dev)
{
 struct lm75_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_hwtype = HWTYPE_LM75;




 device_set_desc(dev, "LM75 temperature sensor");

 return (BUS_PROBE_GENERIC);
}
