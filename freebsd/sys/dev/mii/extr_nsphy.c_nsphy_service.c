
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
struct mii_data {int dummy; } ;


 int EJUSTRETURN ;

 int MII_NSPHY_PCR ;


 int PCR_CIMDIS ;
 int PCR_FLINK100 ;
 int PCR_LED4MODE ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_mac_match (struct mii_softc*,char*) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_tick (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
nsphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 int reg;

 switch (cmd) {
 case 129:
  break;

 case 130:
  reg = PHY_READ(sc, MII_NSPHY_PCR);





  reg |= PCR_LED4MODE;






  reg |= PCR_CIMDIS;





  reg |= PCR_FLINK100;
  reg |= 0x0100 | 0x0400;

  if (mii_phy_mac_match(sc, "fxp"))
   PHY_WRITE(sc, MII_NSPHY_PCR, reg);

  mii_phy_setmedia(sc);
  break;

 case 128:
  if (mii_phy_tick(sc) == EJUSTRETURN)
   return (0);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
