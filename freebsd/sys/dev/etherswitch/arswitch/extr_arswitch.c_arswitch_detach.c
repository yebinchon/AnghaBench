
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entries; } ;
struct arswitch_softc {int numphys; int sc_mtx; TYPE_1__ atu; int * ifname; int ** ifp; int ** miibus; int callout_tick; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct arswitch_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int if_free (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
arswitch_detach(device_t dev)
{
 struct arswitch_softc *sc = device_get_softc(dev);
 int i;

 callout_drain(&sc->callout_tick);

 for (i=0; i < sc->numphys; i++) {
  if (sc->miibus[i] != ((void*)0))
   device_delete_child(dev, sc->miibus[i]);
  if (sc->ifp[i] != ((void*)0))
   if_free(sc->ifp[i]);
  free(sc->ifname[i], M_DEVBUF);
 }

 free(sc->atu.entries, M_DEVBUF);

 bus_generic_detach(dev);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
