
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct gem_softc {int sc_flags; struct ifnet* sc_ifp; } ;


 int GEM_INITED ;
 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int IFF_UP ;
 int gem_init_locked (struct gem_softc*) ;

void
gem_resume(struct gem_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 GEM_LOCK(sc);




 sc->sc_flags &= ~GEM_INITED;
 if (ifp->if_flags & IFF_UP)
  gem_init_locked(sc);
 GEM_UNLOCK(sc);
}
