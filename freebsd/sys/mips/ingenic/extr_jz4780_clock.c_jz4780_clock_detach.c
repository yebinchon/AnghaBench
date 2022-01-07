
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_clock_softc {int res; } ;
typedef int device_t ;


 int CGU_LOCK_DESTROY (struct jz4780_clock_softc*) ;
 int bus_release_resources (int ,int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int ) ;
 int jz4780_clock_spec ;

__attribute__((used)) static int
jz4780_clock_detach(device_t dev)
{
 struct jz4780_clock_softc *sc;

 sc = device_get_softc(dev);
 bus_release_resources(dev, jz4780_clock_spec, sc->res);
 CGU_LOCK_DESTROY(sc);

 return (0);
}
