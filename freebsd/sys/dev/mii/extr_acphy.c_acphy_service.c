
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
struct mii_data {int dummy; } ;


 int BMCR_ISO ;
 int BMCR_PDOWN ;
 int MII_BMCR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
acphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 int reg;

 switch (cmd) {
 case 129:
  break;

 case 130:

  reg = PHY_READ(sc, MII_BMCR);
  if (reg & (BMCR_ISO | BMCR_PDOWN))
   PHY_WRITE(sc, MII_BMCR, reg & ~(BMCR_ISO | BMCR_PDOWN));

  mii_phy_setmedia(sc);
  break;

 case 128:



  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
