
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int dummy; } ;


 int AN_LOCK (struct an_softc*) ;
 int AN_UNLOCK (struct an_softc*) ;
 int an_start_locked (struct ifnet*) ;

__attribute__((used)) static void
an_start(struct ifnet *ifp)
{
 struct an_softc *sc;

 sc = ifp->if_softc;
 AN_LOCK(sc);
 an_start_locked(ifp);
 AN_UNLOCK(sc);
}
