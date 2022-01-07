
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
struct mii_data {int dummy; } ;





 int PHY_STATUS (struct mii_softc*) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
qsphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{

 switch (cmd) {
 case 129:
  break;

 case 130:
  mii_phy_setmedia(sc);
  break;

 case 128:



  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
