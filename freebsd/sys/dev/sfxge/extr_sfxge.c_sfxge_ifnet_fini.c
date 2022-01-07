
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int media; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;


 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int sfxge_stop (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_ifnet_fini(struct ifnet *ifp)
{
 struct sfxge_softc *sc = ifp->if_softc;

 SFXGE_ADAPTER_LOCK(sc);
 sfxge_stop(sc);
 SFXGE_ADAPTER_UNLOCK(sc);

 ifmedia_removeall(&sc->media);
 ether_ifdetach(ifp);
 if_free(ifp);
}
