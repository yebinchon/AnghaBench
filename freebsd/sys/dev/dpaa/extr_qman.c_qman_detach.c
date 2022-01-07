
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_softc {int * sc_rres; int sc_rrid; int * sc_ires; int sc_irid; scalar_t__ sc_qh; } ;
typedef int device_t ;


 int QM_Free (scalar_t__) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XX_DeallocIntr (uintptr_t) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct qman_softc* device_get_softc (int ) ;

int
qman_detach(device_t dev)
{
 struct qman_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_qh)
  QM_Free(sc->sc_qh);

 if (sc->sc_ires != ((void*)0))
  XX_DeallocIntr((uintptr_t)sc->sc_ires);

 if (sc->sc_ires != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->sc_irid, sc->sc_ires);

 if (sc->sc_rres != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_rrid, sc->sc_rres);

 return (0);
}
