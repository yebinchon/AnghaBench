
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int dummy; } ;


 int KSZPHY_EXTREG_WRITE ;
 int MII_KSZPHY_EXTREG ;
 int MII_KSZPHY_EXTREG_WRITE ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
ksz9021_write(struct mii_softc *sc, uint32_t reg, uint32_t val)
{

 PHY_WRITE(sc, MII_KSZPHY_EXTREG, KSZPHY_EXTREG_WRITE | reg);
 PHY_WRITE(sc, MII_KSZPHY_EXTREG_WRITE, val);
}
