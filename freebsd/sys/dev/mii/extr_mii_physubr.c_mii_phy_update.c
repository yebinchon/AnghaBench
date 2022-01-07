
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {scalar_t__ mii_media_active; scalar_t__ mii_media_status; int mii_dev; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; } ;


 int MIIBUS_LINKCHG (int ) ;
 int MIIBUS_STATCHG (int ) ;
 int MII_MEDIACHG ;

void
mii_phy_update(struct mii_softc *sc, int cmd)
{
 struct mii_data *mii = sc->mii_pdata;

 if (sc->mii_media_active != mii->mii_media_active ||
     cmd == MII_MEDIACHG) {
  MIIBUS_STATCHG(sc->mii_dev);
  sc->mii_media_active = mii->mii_media_active;
 }
 if (sc->mii_media_status != mii->mii_media_status) {
  MIIBUS_LINKCHG(sc->mii_dev);
  sc->mii_media_status = mii->mii_media_status;
 }
}
