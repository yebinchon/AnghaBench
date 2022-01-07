
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;


 int DELAY (int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;

__attribute__((used)) static void
ip1000phy_load_dspcode(struct mii_softc *sc)
{

 PHY_WRITE(sc, 31, 0x0001);
 PHY_WRITE(sc, 27, 0x01e0);
 PHY_WRITE(sc, 31, 0x0002);
 PHY_WRITE(sc, 27, 0xeb8e);
 PHY_WRITE(sc, 31, 0x0000);
 PHY_WRITE(sc, 30, 0x005e);
 PHY_WRITE(sc, 9, 0x0700);

 DELAY(50);
}
