
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct cas_softc {struct ifnet* sc_ifp; } ;


 int CAS_LOCK (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int cas_stop (struct ifnet*) ;

__attribute__((used)) static void
cas_suspend(struct cas_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 CAS_LOCK(sc);
 cas_stop(ifp);
 CAS_UNLOCK(sc);
}
