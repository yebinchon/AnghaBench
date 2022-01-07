
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int BMCR_AUTOEN ;
 int BMCR_FDX ;
 int BMCR_S100 ;
 int MII_BMCR ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
ruephy_reset(struct mii_softc *sc)
{

 mii_phy_reset(sc);





 PHY_WRITE(sc, MII_BMCR, (BMCR_S100 | BMCR_AUTOEN | BMCR_FDX));
}
