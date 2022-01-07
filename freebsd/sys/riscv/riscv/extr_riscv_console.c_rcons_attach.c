
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcons_softc {int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int SIE_SSIE ;
 int bus_generic_attach (int ) ;
 int csr_set (int ,int ) ;
 struct rcons_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int sie ;

__attribute__((used)) static int
rcons_attach(device_t dev)
{
 struct rcons_softc *sc;

 if (device_get_unit(dev) != 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->dev = dev;

 csr_set(sie, SIE_SSIE);

 bus_generic_attach(sc->dev);

 return (0);
}
