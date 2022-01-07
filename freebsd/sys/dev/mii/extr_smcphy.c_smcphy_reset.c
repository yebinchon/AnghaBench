
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mii_softc {int mii_dev; } ;


 int BMCR_RESET ;
 int DELAY (int) ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
smcphy_reset(struct mii_softc *sc)
{
 u_int bmcr;
 int timeout;

 PHY_WRITE(sc, MII_BMCR, BMCR_RESET);

 for (timeout = 2; timeout > 0; timeout--) {
  DELAY(50000);
  bmcr = PHY_READ(sc, MII_BMCR);
  if ((bmcr & BMCR_RESET) == 0)
   break;
 }

 if (bmcr & BMCR_RESET)
  device_printf(sc->mii_dev, "reset failed\n");

 PHY_WRITE(sc, MII_BMCR, 0x3000);


 PHY_WRITE(sc, 0x1e, 0xffc0);
}
