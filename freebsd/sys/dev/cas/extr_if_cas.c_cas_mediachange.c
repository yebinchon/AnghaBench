
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct cas_softc* if_softc; } ;
struct cas_softc {int sc_mii; } ;


 int CAS_LOCK (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int mii_mediachg (int ) ;

__attribute__((used)) static int
cas_mediachange(struct ifnet *ifp)
{
 struct cas_softc *sc = ifp->if_softc;
 int error;



 CAS_LOCK(sc);
 error = mii_mediachg(sc->sc_mii);
 CAS_UNLOCK(sc);
 return (error);
}
