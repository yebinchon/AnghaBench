
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spibus_softc {int dev; } ;
typedef int device_t ;


 struct spibus_softc* SPIBUS_SOFTC (int ) ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;

__attribute__((used)) static int
spibus_attach(device_t dev)
{
 struct spibus_softc *sc = SPIBUS_SOFTC(dev);

 sc->dev = dev;
 bus_enumerate_hinted_children(dev);
 return (bus_generic_attach(dev));
}
