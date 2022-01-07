
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_capabilities; } ;


 int ANAR_CSMA ;
 int BMSR_MEDIA_TO_ANAR (int ) ;
 int MII_MMDAADR ;
 int MII_MMDACR ;
 int MMDACR_DADDRMASK ;
 int MMDACR_FN_ADDRESS ;
 int MMDACR_FN_DATANPI ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int RGEPHY_1000CTL_AFD ;
 int RGEPHY_1000CTL_AHD ;
 int RGEPHY_BMCR_AUTOEN ;
 int RGEPHY_BMCR_RESET ;
 int RGEPHY_BMCR_STARTNEG ;
 int RGEPHY_F_EPAGSR ;
 int RGEPHY_F_MMD_DEV_7 ;
 int RGEPHY_F_MMD_EEEAR ;
 int RGEPHY_MII_1000CTL ;
 int RGEPHY_MII_ANAR ;
 int RGEPHY_MII_BMCR ;

__attribute__((used)) static void
rgephy_disable_eee(struct mii_softc *sc)
{
 uint16_t anar;

 PHY_WRITE(sc, RGEPHY_F_EPAGSR, 0x0000);
 PHY_WRITE(sc, MII_MMDACR, MMDACR_FN_ADDRESS |
     (MMDACR_DADDRMASK & RGEPHY_F_MMD_DEV_7));
 PHY_WRITE(sc, MII_MMDAADR, RGEPHY_F_MMD_EEEAR);
 PHY_WRITE(sc, MII_MMDACR, MMDACR_FN_DATANPI |
     (MMDACR_DADDRMASK & RGEPHY_F_MMD_DEV_7));
 PHY_WRITE(sc, MII_MMDAADR, 0x0000);
 PHY_WRITE(sc, MII_MMDACR, 0x0000);





 anar = BMSR_MEDIA_TO_ANAR(sc->mii_capabilities) | ANAR_CSMA;
 PHY_WRITE(sc, RGEPHY_MII_ANAR, anar);
 PHY_WRITE(sc, RGEPHY_MII_1000CTL, RGEPHY_1000CTL_AHD |
     RGEPHY_1000CTL_AFD);
 PHY_WRITE(sc, RGEPHY_MII_BMCR, RGEPHY_BMCR_RESET |
     RGEPHY_BMCR_AUTOEN | RGEPHY_BMCR_STARTNEG);
}
