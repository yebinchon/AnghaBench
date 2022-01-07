
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct gem_softc {struct ifnet* sc_ifp; } ;


 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int gem_stop (struct ifnet*,int ) ;

void
gem_suspend(struct gem_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 GEM_LOCK(sc);
 gem_stop(ifp, 0);
 GEM_UNLOCK(sc);
}
