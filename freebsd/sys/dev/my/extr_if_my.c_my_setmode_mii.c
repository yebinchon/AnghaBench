
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct my_softc {int my_dev; scalar_t__ my_want_auto; scalar_t__ my_autoneg; int my_autoneg_timer; } ;


 scalar_t__ IFM_1000_T ;
 scalar_t__ IFM_100_T4 ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 int IFM_FDX ;
 int IFM_GMASK ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int PHY_BMCR ;
 int PHY_BMCR_1000 ;
 int PHY_BMCR_AUTONEGENBL ;
 int PHY_BMCR_DUPLEX ;
 int PHY_BMCR_LOOPBK ;
 int PHY_BMCR_SPEEDSEL ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int my_phy_readreg (struct my_softc*,int ) ;
 int my_phy_writereg (struct my_softc*,int ,int) ;
 int my_setcfg (struct my_softc*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
my_setmode_mii(struct my_softc * sc, int media)
{
 u_int16_t bmcr;

 MY_LOCK_ASSERT(sc);



 if (sc->my_autoneg) {
  device_printf(sc->my_dev, "canceling autoneg session\n");
  callout_stop(&sc->my_autoneg_timer);
  sc->my_autoneg = sc->my_want_auto = 0;
  bmcr = my_phy_readreg(sc, PHY_BMCR);
  bmcr &= ~PHY_BMCR_AUTONEGENBL;
  my_phy_writereg(sc, PHY_BMCR, bmcr);
 }
 device_printf(sc->my_dev, "selecting MII, ");
 bmcr = my_phy_readreg(sc, PHY_BMCR);
 bmcr &= ~(PHY_BMCR_AUTONEGENBL | PHY_BMCR_SPEEDSEL | PHY_BMCR_1000 |
    PHY_BMCR_DUPLEX | PHY_BMCR_LOOPBK);
 if (IFM_SUBTYPE(media) == IFM_100_T4) {
  printf("100Mbps/T4, half-duplex\n");
  bmcr |= PHY_BMCR_SPEEDSEL;
  bmcr &= ~PHY_BMCR_DUPLEX;
 }
 if (IFM_SUBTYPE(media) == IFM_100_TX) {
  printf("100Mbps, ");
  bmcr |= PHY_BMCR_SPEEDSEL;
 }
 if (IFM_SUBTYPE(media) == IFM_10_T) {
  printf("10Mbps, ");
  bmcr &= ~PHY_BMCR_SPEEDSEL;
 }
 if ((media & IFM_GMASK) == IFM_FDX) {
  printf("full duplex\n");
  bmcr |= PHY_BMCR_DUPLEX;
 } else {
  printf("half duplex\n");
  bmcr &= ~PHY_BMCR_DUPLEX;
 }
 my_phy_writereg(sc, PHY_BMCR, bmcr);
 my_setcfg(sc, bmcr);
 return;
}
