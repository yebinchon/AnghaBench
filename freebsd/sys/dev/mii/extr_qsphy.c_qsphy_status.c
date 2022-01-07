
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;


 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_LINK ;
 int IFM_100_T4 ;
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
 int MII_QSPHY_PCTL ;






 int PCTL_OPMASK ;
 int PHY_READ (struct mii_softc*,int ) ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
qsphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int bmsr, bmcr, pctl;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, MII_BMSR) |
     PHY_READ(sc, MII_BMSR);
 if (bmsr & BMSR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, MII_BMCR);
 if (bmcr & BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if (bmcr & BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 pctl = PHY_READ(sc, MII_QSPHY_PCTL);
 switch (pctl & PCTL_OPMASK) {
 case 130:
  mii->mii_media_active |= IFM_10_T|IFM_HDX;
  break;
 case 129:
  mii->mii_media_active |= IFM_10_T|IFM_FDX;
  break;
 case 132:
  mii->mii_media_active |= IFM_100_TX|IFM_HDX;
  break;
 case 131:
  mii->mii_media_active |= IFM_100_TX|IFM_FDX;
  break;
 case 133:
  mii->mii_media_active |= IFM_100_T4|IFM_HDX;
  break;
 case 128:
  mii->mii_media_active |= IFM_NONE;
  break;
 default:

  mii->mii_media_active |= IFM_NONE;
  break;
 }
 if ((mii->mii_media_active & IFM_FDX) != 0)
  mii->mii_media_active |= mii_phy_flowstatus(sc);
}
