
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gem_softc* if_softc; } ;
struct gem_softc {int dummy; } ;


 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int gem_start_locked (struct ifnet*) ;

__attribute__((used)) static void
gem_start(struct ifnet *ifp)
{
 struct gem_softc *sc = ifp->if_softc;

 GEM_LOCK(sc);
 gem_start_locked(ifp);
 GEM_UNLOCK(sc);
}
