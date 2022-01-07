
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {int * sc_res; int sc_ih; } ;
typedef int device_t ;


 int GEM_LOCK_DESTROY (struct gem_softc*) ;
 size_t GEM_RES_INTR ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct gem_softc* device_get_softc (int ) ;
 int gem_detach (struct gem_softc*) ;
 int gem_sbus_res_spec ;

__attribute__((used)) static int
gem_sbus_detach(device_t dev)
{
 struct gem_softc *sc;

 sc = device_get_softc(dev);
 bus_teardown_intr(dev, sc->sc_res[GEM_RES_INTR], sc->sc_ih);
 gem_detach(sc);
 GEM_LOCK_DESTROY(sc);
 bus_release_resources(dev, gem_sbus_res_spec, sc->sc_res);
 return (0);
}
