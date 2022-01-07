
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct are_softc* if_softc; } ;
struct are_softc {int dummy; } ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int are_start_locked (struct ifnet*) ;

__attribute__((used)) static void
are_start(struct ifnet *ifp)
{
 struct are_softc *sc;

 sc = ifp->if_softc;

 ARE_LOCK(sc);
 are_start_locked(ifp);
 ARE_UNLOCK(sc);
}
