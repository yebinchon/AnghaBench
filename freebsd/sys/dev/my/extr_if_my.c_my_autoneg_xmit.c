
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct my_softc {int dummy; } ;


 int DELAY (int) ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int PHY_BMCR ;
 int PHY_BMCR_AUTONEGENBL ;
 int PHY_BMCR_AUTONEGRSTR ;
 int PHY_BMCR_RESET ;
 int my_phy_readreg (struct my_softc*,int ) ;
 int my_phy_writereg (struct my_softc*,int ,int) ;

__attribute__((used)) static void
my_autoneg_xmit(struct my_softc * sc)
{
 u_int16_t phy_sts = 0;

 MY_LOCK_ASSERT(sc);

 my_phy_writereg(sc, PHY_BMCR, PHY_BMCR_RESET);
 DELAY(500);
 while (my_phy_readreg(sc, PHY_BMCR) & PHY_BMCR_RESET);

 phy_sts = my_phy_readreg(sc, PHY_BMCR);
 phy_sts |= PHY_BMCR_AUTONEGENBL | PHY_BMCR_AUTONEGRSTR;
 my_phy_writereg(sc, PHY_BMCR, phy_sts);

 return;
}
