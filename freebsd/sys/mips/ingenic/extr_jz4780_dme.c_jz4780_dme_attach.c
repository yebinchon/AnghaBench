
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dme_softc {int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct jz4780_dme_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int jz4780_dme_spec ;

__attribute__((used)) static int
jz4780_dme_attach(device_t dev)
{
 struct jz4780_dme_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 if (bus_alloc_resources(dev, jz4780_dme_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 return (0);
}
