
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_clock_softc {int res; int * clkdom; int dev; } ;
typedef int device_t ;


 int CGU_LOCK_DESTROY (struct jz4780_clock_softc*) ;
 int CGU_LOCK_INIT (struct jz4780_clock_softc*) ;
 int ENXIO ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int * clkdom_create (int ) ;
 int clkdom_dump (int *) ;
 scalar_t__ clkdom_finit (int *) ;
 struct jz4780_clock_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ jz4780_clock_fixup (struct jz4780_clock_softc*) ;
 scalar_t__ jz4780_clock_register (struct jz4780_clock_softc*) ;
 int jz4780_clock_spec ;

__attribute__((used)) static int
jz4780_clock_attach(device_t dev)
{
 struct jz4780_clock_softc *sc;

 sc = device_get_softc(dev);
 if (bus_alloc_resources(dev, jz4780_clock_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 sc->dev = dev;
 CGU_LOCK_INIT(sc);

 sc->clkdom = clkdom_create(dev);
 if (sc->clkdom == ((void*)0))
  goto fail;
 if (jz4780_clock_register(sc) != 0)
  goto fail;
 if (clkdom_finit(sc->clkdom) != 0)
  goto fail;
 if (jz4780_clock_fixup(sc) != 0)
  goto fail;
 if (bootverbose)
  clkdom_dump(sc->clkdom);

 return (0);
fail:
 bus_release_resources(dev, jz4780_clock_spec, sc->res);
 CGU_LOCK_DESTROY(sc);

 return (ENXIO);
}
