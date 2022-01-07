
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;


 int IFM_1000_SX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int PHY_READ (struct mii_softc*,int ) ;
 int XMPHY_ANLPAR_FDX ;
 int XMPHY_BMCR_AUTOEN ;
 int XMPHY_BMCR_FDX ;
 int XMPHY_BMCR_LOOP ;
 int XMPHY_BMSR_ACOMP ;
 int XMPHY_BMSR_LINK ;
 int XMPHY_MII_ANAR ;
 int XMPHY_MII_ANLPAR ;
 int XMPHY_MII_BMCR ;
 int XMPHY_MII_BMSR ;
 int XMPHY_MII_EXTSTS ;

__attribute__((used)) static void
xmphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int bmsr, bmcr, anlpar;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, XMPHY_MII_BMSR) |
     PHY_READ(sc, XMPHY_MII_BMSR);
 if (bmsr & XMPHY_BMSR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;


 bmcr = PHY_READ(sc, XMPHY_MII_EXTSTS);

 bmcr = PHY_READ(sc, XMPHY_MII_BMCR);

 if (bmcr & XMPHY_BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 if (bmcr & XMPHY_BMCR_AUTOEN) {
  if ((bmsr & XMPHY_BMSR_ACOMP) == 0) {
   if (bmsr & XMPHY_BMSR_LINK) {
    mii->mii_media_active |= IFM_1000_SX|IFM_HDX;
    return;
   }

   mii->mii_media_active |= IFM_NONE;
   return;
  }

  mii->mii_media_active |= IFM_1000_SX;
  anlpar = PHY_READ(sc, XMPHY_MII_ANAR) &
      PHY_READ(sc, XMPHY_MII_ANLPAR);
  if (anlpar & XMPHY_ANLPAR_FDX)
   mii->mii_media_active |= IFM_FDX;
  else
   mii->mii_media_active |= IFM_HDX;
  return;
 }

 mii->mii_media_active |= IFM_1000_SX;
 if (bmcr & XMPHY_BMCR_FDX)
  mii->mii_media_active |= IFM_FDX;
 else
  mii->mii_media_active |= IFM_HDX;
}
