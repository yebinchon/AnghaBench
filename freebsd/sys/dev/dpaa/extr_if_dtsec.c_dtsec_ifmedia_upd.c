
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dtsec_softc* if_softc; } ;
struct dtsec_softc {int sc_mii; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int mii_mediachg (int ) ;

__attribute__((used)) static int
dtsec_ifmedia_upd(struct ifnet *ifp)
{
 struct dtsec_softc *sc = ifp->if_softc;

 DTSEC_LOCK(sc);
 mii_mediachg(sc->sc_mii);
 DTSEC_UNLOCK(sc);

 return (0);
}
