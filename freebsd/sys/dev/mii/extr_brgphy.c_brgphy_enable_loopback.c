
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int BRGPHY_BMCR_LOOP ;
 int BRGPHY_BMSR_LINK ;
 int BRGPHY_MII_BMCR ;
 int BRGPHY_MII_BMSR ;
 int DELAY (int) ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int ) ;

__attribute__((used)) static void
brgphy_enable_loopback(struct mii_softc *sc)
{
 int i;

 PHY_WRITE(sc, BRGPHY_MII_BMCR, BRGPHY_BMCR_LOOP);
 for (i = 0; i < 15000; i++) {
  if (!(PHY_READ(sc, BRGPHY_MII_BMSR) & BRGPHY_BMSR_LINK))
   break;
  DELAY(10);
 }
}
