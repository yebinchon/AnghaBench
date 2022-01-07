
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {struct dme_softc* if_softc; } ;
struct dme_softc {int dme_miibus; } ;


 int DME_LOCK (struct dme_softc*) ;
 int DME_UNLOCK (struct dme_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
dme_ifmedia_upd(struct ifnet *ifp)
{
 struct dme_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->dme_miibus);

 DME_LOCK(sc);
 mii_mediachg(mii);
 DME_UNLOCK(sc);

 return (0);
}
