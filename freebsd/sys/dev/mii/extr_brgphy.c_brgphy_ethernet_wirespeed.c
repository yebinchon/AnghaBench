
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int dummy; } ;


 int BRGPHY_MII_AUXCTL ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
brgphy_ethernet_wirespeed(struct mii_softc *sc)
{
 uint32_t val;


 PHY_WRITE(sc, BRGPHY_MII_AUXCTL, 0x7007);
 val = PHY_READ(sc, BRGPHY_MII_AUXCTL);
 PHY_WRITE(sc, BRGPHY_MII_AUXCTL, val | (1 << 15) | (1 << 4));
}
