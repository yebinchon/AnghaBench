
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_lock; int * as_aperture; int as_aperture_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct agp_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

void
agp_free_res(device_t dev)
{
 struct agp_softc *sc = device_get_softc(dev);

 if (sc->as_aperture != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->as_aperture_rid,
      sc->as_aperture);
 mtx_destroy(&sc->as_lock);
}
