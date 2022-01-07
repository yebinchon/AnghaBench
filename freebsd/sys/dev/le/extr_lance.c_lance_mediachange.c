
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int (* sc_start_locked ) (struct lance_softc*) ;scalar_t__ sc_mediachange; } ;
struct ifnet {int if_snd; struct lance_softc* if_softc; } ;


 int IFQ_DRV_IS_EMPTY (int *) ;
 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int lance_init_locked (struct lance_softc*) ;
 int lance_stop (struct lance_softc*) ;
 int stub1 (struct lance_softc*) ;

__attribute__((used)) static int
lance_mediachange(struct ifnet *ifp)
{
 struct lance_softc *sc = ifp->if_softc;

 if (sc->sc_mediachange) {







  LE_LOCK(sc);
  lance_stop(sc);
  lance_init_locked(sc);
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   (*sc->sc_start_locked)(sc);
  LE_UNLOCK(sc);
 }
 return (0);
}
