
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int IER_INTEN ;
 int MII_LXTPHY_IER ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
lxtphy_reset(struct mii_softc *sc)
{

 mii_phy_reset(sc);
 PHY_WRITE(sc, MII_LXTPHY_IER,
     PHY_READ(sc, MII_LXTPHY_IER) & ~IER_INTEN);
}
