
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axidma_softc {int * res; int * ih; } ;
typedef int device_t ;


 int axidma_spec ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct axidma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axidma_detach(device_t dev)
{
 struct axidma_softc *sc;

 sc = device_get_softc(dev);

 bus_teardown_intr(dev, sc->res[1], sc->ih[0]);
 bus_teardown_intr(dev, sc->res[2], sc->ih[1]);
 bus_release_resources(dev, axidma_spec, sc->res);

 return (0);
}
