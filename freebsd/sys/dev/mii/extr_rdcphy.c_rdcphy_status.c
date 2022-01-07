
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;


 int BMCR_AUTOEN ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_ACOMP ;
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
 int MII_BMSR ;
 int MII_RDCPHY_STATUS ;
 int PHY_READ (struct mii_softc*,int ) ;
 int STATUS_FULL_DUPLEX ;
 int STATUS_LINK_UP ;


 int STATUS_SPEED_MASK ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
rdcphy_status(struct mii_softc *sc)
{
 struct mii_data *mii;
 int bmsr, bmcr, physts;

 mii = sc->mii_pdata;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
 physts = PHY_READ(sc, MII_RDCPHY_STATUS);

 if ((physts & STATUS_LINK_UP) != 0)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, MII_BMCR);
 if ((bmcr & BMCR_ISO) != 0) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if ((bmcr & BMCR_LOOP) != 0)
  mii->mii_media_active |= IFM_LOOP;

 if ((bmcr & BMCR_AUTOEN) != 0) {
  if ((bmsr & BMSR_ACOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
  }
 }

 switch (physts & STATUS_SPEED_MASK) {
 case 128:
  mii->mii_media_active |= IFM_100_TX;
  break;
 case 129:
  mii->mii_media_active |= IFM_10_T;
  break;
 default:
  mii->mii_media_active |= IFM_NONE;
  return;
 }
 if ((physts & STATUS_FULL_DUPLEX) != 0)
  mii->mii_media_active |= IFM_FDX | mii_phy_flowstatus(sc);
 else
  mii->mii_media_active |= IFM_HDX;
}
