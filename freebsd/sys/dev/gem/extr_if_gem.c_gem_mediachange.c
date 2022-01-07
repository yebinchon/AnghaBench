
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gem_softc* if_softc; } ;
struct gem_softc {int sc_mii; } ;


 int GEM_LOCK (struct gem_softc*) ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int mii_mediachg (int ) ;

int
gem_mediachange(struct ifnet *ifp)
{
 struct gem_softc *sc = ifp->if_softc;
 int error;



 GEM_LOCK(sc);
 error = mii_mediachg(sc->sc_mii);
 GEM_UNLOCK(sc);
 return (error);
}
