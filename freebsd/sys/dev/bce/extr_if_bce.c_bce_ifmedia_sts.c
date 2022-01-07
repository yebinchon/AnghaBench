
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_flags; struct bce_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct bce_softc {int bce_phy_flags; int bce_miibus; } ;


 int BCE_LOCK (struct bce_softc*) ;
 int BCE_PHY_REMOTE_CAP_FLAG ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE_PHY ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int IFF_UP ;
 int bce_ifmedia_sts_rphy (struct bce_softc*,struct ifmediareq*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
bce_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct bce_softc *sc = ifp->if_softc;
 struct mii_data *mii;

 DBENTER(BCE_VERBOSE_PHY);

 BCE_LOCK(sc);

 if ((ifp->if_flags & IFF_UP) == 0) {
  BCE_UNLOCK(sc);
  return;
 }

 if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
  bce_ifmedia_sts_rphy(sc, ifmr);
 else {
  mii = device_get_softc(sc->bce_miibus);
  mii_pollstat(mii);
  ifmr->ifm_active = mii->mii_media_active;
  ifmr->ifm_status = mii->mii_media_status;
 }

 BCE_UNLOCK(sc);

 DBEXIT(BCE_VERBOSE_PHY);
}
