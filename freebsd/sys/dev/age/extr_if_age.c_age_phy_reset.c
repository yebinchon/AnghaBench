
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct age_softc {int age_phyaddr; int age_dev; } ;


 int AGE_GPHY_CTRL ;
 int ATPHY_CDTC ;
 int ATPHY_CDTS ;
 int ATPHY_DBG_ADDR ;
 int ATPHY_DBG_DATA ;
 int BMCR_AUTOEN ;
 int BMCR_RESET ;
 int BMCR_STARTNEG ;
 int CSR_WRITE_4 (struct age_softc*,int ,int ) ;
 int DELAY (int) ;
 int GPHY_CTRL_CLR ;
 int GPHY_CTRL_RST ;
 int MII_BMCR ;
 int PHY_CDTC_ENB ;
 int PHY_CDTC_POFF ;
 int PHY_CDTS_STAT_MASK ;
 int PHY_CDTS_STAT_OPEN ;
 int age_miibus_readreg (int ,int ,int ) ;
 int age_miibus_writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
age_phy_reset(struct age_softc *sc)
{
 uint16_t reg, pn;
 int i, linkup;


 CSR_WRITE_4(sc, AGE_GPHY_CTRL, GPHY_CTRL_RST);
 DELAY(2000);
 CSR_WRITE_4(sc, AGE_GPHY_CTRL, GPHY_CTRL_CLR);
 DELAY(2000);
 age_miibus_writereg(sc->age_dev, sc->age_phyaddr, MII_BMCR, BMCR_RESET);
 for (linkup = 0, pn = 0; pn < 4; pn++) {
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr, 0x16,
      (pn << 8) | 0x0001);
  for (i = 200; i > 0; i--) {
   DELAY(1000);
   reg = age_miibus_readreg(sc->age_dev, sc->age_phyaddr,
       0x16);
   if ((reg & 0x0001) == 0)
    break;
  }
  DELAY(1000);
  reg = age_miibus_readreg(sc->age_dev, sc->age_phyaddr,
      0x1C);
  if ((reg & 0x0300) != 0x0200) {
   linkup++;
   break;
  }
 }
 age_miibus_writereg(sc->age_dev, sc->age_phyaddr, MII_BMCR,
     BMCR_RESET | BMCR_AUTOEN | BMCR_STARTNEG);
 if (linkup == 0) {
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1D, 0);
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1E, 0x124E);
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1D, 1);
  reg = age_miibus_readreg(sc->age_dev, sc->age_phyaddr,
      0x1E);
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1E, reg | 0x03);

  DELAY(1500 * 1000);
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1D, 0);
  age_miibus_writereg(sc->age_dev, sc->age_phyaddr,
      0x1E, 0x024E);
    }
}
