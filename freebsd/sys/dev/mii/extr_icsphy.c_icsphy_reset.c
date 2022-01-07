
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_mpd_model; } ;


 int BMCR_FDX ;
 int BMCR_S100 ;
 int BMCR_STARTNEG ;
 int ECR2_100AUTOPWRDN ;
 int ECR2_10AUTOPWRDN ;
 int MII_BMCR ;
 int MII_ICSPHY_ECR2 ;



 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
icsphy_reset(struct mii_softc *sc)
{

 mii_phy_reset(sc);

 switch (sc->mii_mpd_model) {
  case 130:
  case 128:
   PHY_WRITE(sc, MII_ICSPHY_ECR2, ECR2_100AUTOPWRDN);
   break;
  case 129:
   PHY_WRITE(sc, MII_ICSPHY_ECR2,
       ECR2_10AUTOPWRDN|ECR2_100AUTOPWRDN);
   break;
  default:

   break;
 }




 PHY_WRITE(sc, MII_BMCR, BMCR_S100|BMCR_STARTNEG|BMCR_FDX);
}
