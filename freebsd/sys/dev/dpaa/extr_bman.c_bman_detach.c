
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_softc {int * sc_rres; int sc_rrid; int * sc_ires; int sc_irid; int * sc_bh; } ;
typedef int device_t ;


 int BM_Free (int *) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct bman_softc* device_get_softc (int ) ;

int
bman_detach(device_t dev)
{
 struct bman_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_bh != ((void*)0))
  BM_Free(sc->sc_bh);

 if (sc->sc_ires != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->sc_irid, sc->sc_ires);

 if (sc->sc_rres != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_rrid, sc->sc_rres);

 return (0);
}
