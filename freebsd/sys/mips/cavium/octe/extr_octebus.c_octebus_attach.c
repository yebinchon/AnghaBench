
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octebus_softc {int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int cvm_oct_init_module (int ) ;
 struct octebus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
octebus_attach(device_t dev)
{
 struct octebus_softc *sc;
 int rv;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 rv = cvm_oct_init_module(dev);
 if (rv != 0)
  return (ENXIO);

 return (0);
}
