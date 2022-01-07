
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arge_softc {int dummy; } ;


 int AR71XX_MAC_MII_CFG ;
 int ARGE_WRITE (struct arge_softc*,int ,int) ;
 int DELAY (int) ;
 int MAC_MII_CFG_RESET ;
 int arge_fetch_mdiobus_clock_rate (struct arge_softc*) ;

__attribute__((used)) static void
arge_reset_miibus(struct arge_softc *sc)
{
 uint32_t mdio_div;

 mdio_div = arge_fetch_mdiobus_clock_rate(sc);







 ARGE_WRITE(sc, AR71XX_MAC_MII_CFG, MAC_MII_CFG_RESET | mdio_div);
 DELAY(100);
 ARGE_WRITE(sc, AR71XX_MAC_MII_CFG, mdio_div);
 DELAY(100);
}
