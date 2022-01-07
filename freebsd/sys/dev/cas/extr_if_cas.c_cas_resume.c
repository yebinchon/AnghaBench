
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct cas_softc {int sc_flags; struct ifnet* sc_ifp; } ;


 int CAS_INITED ;
 int CAS_LOCK (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int IFF_UP ;
 int cas_init_locked (struct cas_softc*) ;

__attribute__((used)) static void
cas_resume(struct cas_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 CAS_LOCK(sc);




 sc->sc_flags &= ~CAS_INITED;
 if (ifp->if_flags & IFF_UP)
  cas_init_locked(sc);
 CAS_UNLOCK(sc);
}
