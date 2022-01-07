
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int BRGPHY_1000CTL_AFD ;
 int BRGPHY_1000CTL_AHD ;
 int BRGPHY_1000CTL_MSC ;
 int BRGPHY_1000CTL_MSE ;
 int BRGPHY_BMCR_AUTOEN ;
 int BRGPHY_BMCR_FDX ;
 int BRGPHY_BMCR_STARTNEG ;
 int BRGPHY_MII_1000CTL ;
 int BRGPHY_MII_ANAR ;
 int BRGPHY_MII_BMCR ;
 int BRGPHY_S10 ;
 int BRGPHY_S100 ;
 int BRGPHY_S1000 ;
 int BRGPHY_SEL_TYPE ;





 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int const IFM_SUBTYPE (int) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int brgphy_enable_loopback (struct mii_softc*) ;

__attribute__((used)) static void
brgphy_setmedia(struct mii_softc *sc, int media)
{
 int bmcr = 0, gig;

 switch (IFM_SUBTYPE(media)) {
 case 128:
  break;
 case 132:
 case 131:
  bmcr = BRGPHY_S1000;
  break;
 case 130:
  bmcr = BRGPHY_S100;
  break;
 case 129:
 default:
  bmcr = BRGPHY_S10;
  break;
 }

 if ((media & IFM_FDX) != 0) {
  bmcr |= BRGPHY_BMCR_FDX;
  gig = BRGPHY_1000CTL_AFD;
 } else {
  gig = BRGPHY_1000CTL_AHD;
 }


 brgphy_enable_loopback(sc);

 PHY_WRITE(sc, BRGPHY_MII_1000CTL, 0);
 PHY_WRITE(sc, BRGPHY_MII_ANAR, BRGPHY_SEL_TYPE);

 if (IFM_SUBTYPE(media) != 131 &&
     IFM_SUBTYPE(media) != 132) {
  PHY_WRITE(sc, BRGPHY_MII_BMCR, bmcr);
  return;
 }

 if (IFM_SUBTYPE(media) == 131) {
  gig |= BRGPHY_1000CTL_MSE;
  if ((media & IFM_ETH_MASTER) != 0)
   gig |= BRGPHY_1000CTL_MSC;
 }
 PHY_WRITE(sc, BRGPHY_MII_1000CTL, gig);
 PHY_WRITE(sc, BRGPHY_MII_BMCR,
     bmcr | BRGPHY_BMCR_AUTOEN | BRGPHY_BMCR_STARTNEG);
}
