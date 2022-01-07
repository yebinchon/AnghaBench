
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int dummy; } ;


 int MII_KSZPHY_EXTREG ;
 int MII_KSZPHY_EXTREG_READ ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int ) ;

__attribute__((used)) static uint32_t
ksz9021_read(struct mii_softc *sc, uint32_t reg)
{

 PHY_WRITE(sc, MII_KSZPHY_EXTREG, reg);

 return (PHY_READ(sc, MII_KSZPHY_EXTREG_READ));
}
