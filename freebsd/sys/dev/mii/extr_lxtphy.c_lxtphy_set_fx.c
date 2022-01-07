
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int CONFIG_100BASEFX ;
 int MII_LXTPHY_CONFIG ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
lxtphy_set_fx(struct mii_softc *sc)
{
 int cfg;

 cfg = PHY_READ(sc, MII_LXTPHY_CONFIG);
 cfg |= CONFIG_100BASEFX;
 PHY_WRITE(sc, MII_LXTPHY_CONFIG, cfg);
}
