
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int DELAY (int) ;
 int EJUSTRETURN ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int XMPHY_ANAR_FDX ;
 int XMPHY_ANAR_HDX ;
 int XMPHY_BMCR_AUTOEN ;
 int XMPHY_BMCR_STARTNEG ;
 int XMPHY_MII_ANAR ;
 int XMPHY_MII_BMCR ;

__attribute__((used)) static int
xmphy_mii_phy_auto(struct mii_softc *mii)
{
 int anar = 0;

 anar = PHY_READ(mii, XMPHY_MII_ANAR);
 anar |= XMPHY_ANAR_FDX|XMPHY_ANAR_HDX;
 PHY_WRITE(mii, XMPHY_MII_ANAR, anar);
 DELAY(1000);
 PHY_WRITE(mii, XMPHY_MII_BMCR,
     XMPHY_BMCR_AUTOEN | XMPHY_BMCR_STARTNEG);

 return (EJUSTRETURN);
}
