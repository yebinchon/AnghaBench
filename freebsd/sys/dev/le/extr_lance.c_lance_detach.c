
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int sc_wdog_ch; struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;


 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int callout_drain (int *) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int lance_stop (struct lance_softc*) ;

void
lance_detach(struct lance_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 LE_LOCK(sc);
 lance_stop(sc);
 LE_UNLOCK(sc);
 callout_drain(&sc->sc_wdog_ch);
 ether_ifdetach(ifp);
 if_free(ifp);
}
