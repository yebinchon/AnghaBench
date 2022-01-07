
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {struct mii_data* tsec_mii; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct tsec_softc* if_softc; } ;


 int TSEC_TRANSMIT_LOCK (struct tsec_softc*) ;
 int TSEC_TRANSMIT_UNLOCK (struct tsec_softc*) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
tsec_ifmedia_upd(struct ifnet *ifp)
{
 struct tsec_softc *sc = ifp->if_softc;
 struct mii_data *mii;

 TSEC_TRANSMIT_LOCK(sc);

 mii = sc->tsec_mii;
 mii_mediachg(mii);

 TSEC_TRANSMIT_UNLOCK(sc);
 return (0);
}
