
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int sc_mtx; int * ifname; int ** ifp; int ** miibus; int callout_tick; } ;
typedef int device_t ;


 int MTKSWITCH_MAX_PHYS ;
 int M_DEVBUF ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int if_free (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
mtkswitch_detach(device_t dev)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);
 int phy;

 callout_drain(&sc->callout_tick);

 for (phy = 0; phy < MTKSWITCH_MAX_PHYS; phy++) {
  if (sc->miibus[phy] != ((void*)0))
   device_delete_child(dev, sc->miibus[phy]);
  if (sc->ifp[phy] != ((void*)0))
   if_free(sc->ifp[phy]);
  free(sc->ifname[phy], M_DEVBUF);
 }

 bus_generic_detach(dev);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
