
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; } ;


 int BMCR_AUTOEN ;
 int BMCR_RESET ;
 int DELAY (int) ;
 int GTCR_TEST_MASK ;
 int JMPHY_EXT_COMM_2 ;
 int JMPHY_SPEC_ADDR ;
 int JMPHY_SPEC_ADDR_READ ;
 int JMPHY_SPEC_ADDR_WRITE ;
 int JMPHY_SPEC_DATA ;
 int JMPHY_TMCTL ;
 int JMPHY_TMCTL_SLEEP_ENB ;
 int MIIF_PHYPRIV0 ;
 int MII_100T2CR ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
jmphy_reset(struct mii_softc *sc)
{
 uint16_t t2cr, val;
 int i;


 PHY_WRITE(sc, JMPHY_TMCTL,
     PHY_READ(sc, JMPHY_TMCTL) & ~JMPHY_TMCTL_SLEEP_ENB);
 PHY_WRITE(sc, MII_BMCR, BMCR_RESET | BMCR_AUTOEN);

 for (i = 0; i < 1000; i++) {
  DELAY(1);
  if ((PHY_READ(sc, MII_BMCR) & BMCR_RESET) == 0)
   break;
 }

 if ((sc->mii_flags & MIIF_PHYPRIV0) != 0) {

  t2cr = PHY_READ(sc, MII_100T2CR);
  t2cr &= ~GTCR_TEST_MASK;
  t2cr |= 0x2000;
  PHY_WRITE(sc, MII_100T2CR, t2cr);

  PHY_WRITE(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_READ |
      JMPHY_EXT_COMM_2);
  val = PHY_READ(sc, JMPHY_SPEC_DATA);
  val &= ~0x0002;
  val |= 0x0010 | 0x0001;
  PHY_WRITE(sc, JMPHY_SPEC_DATA, val);
  PHY_WRITE(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_WRITE |
      JMPHY_EXT_COMM_2);


  DELAY(20 * 1000);

  PHY_READ(sc, MII_100T2CR);
  PHY_WRITE(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_READ |
      JMPHY_EXT_COMM_2);
  val = PHY_READ(sc, JMPHY_SPEC_DATA);
  val &= ~(0x0001 | 0x0002 | 0x0010);
  PHY_WRITE(sc, JMPHY_SPEC_DATA, val);
  PHY_WRITE(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_WRITE |
      JMPHY_EXT_COMM_2);

  PHY_READ(sc, MII_100T2CR);
  t2cr &= ~GTCR_TEST_MASK;
  PHY_WRITE(sc, MII_100T2CR, t2cr);
 }
}
