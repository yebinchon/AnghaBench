
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {struct mii_data* mii_pdata; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMCR_AUTOEN ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int MII_BMCR ;
 int MII_ICSPHY_QPR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int QPR_ACOMP ;
 int QPR_FDX ;
 int QPR_LINK ;
 int QPR_SPEED ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
icsphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr, qpr;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;






 qpr = PHY_READ(sc, MII_ICSPHY_QPR);
 qpr = PHY_READ(sc, MII_ICSPHY_QPR);

 if (qpr & QPR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, MII_BMCR);
 if (bmcr & BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if (bmcr & BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 if (bmcr & BMCR_AUTOEN) {
  if ((qpr & QPR_ACOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
  }
  if (qpr & QPR_SPEED)
   mii->mii_media_active |= IFM_100_TX;
  else
   mii->mii_media_active |= IFM_10_T;
  if (qpr & QPR_FDX)
   mii->mii_media_active |=
       IFM_FDX | mii_phy_flowstatus(sc);
  else
   mii->mii_media_active |= IFM_HDX;
 } else
  mii->mii_media_active = ife->ifm_media;
}
