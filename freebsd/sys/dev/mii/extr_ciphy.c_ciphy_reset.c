
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int DELAY (int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
ciphy_reset(struct mii_softc *sc)
{

 mii_phy_reset(sc);
 DELAY(1000);
}
