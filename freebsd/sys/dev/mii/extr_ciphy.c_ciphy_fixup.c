
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_dev; } ;


 int CIPHY_10BTCSR_ECHO ;
 int CIPHY_AUXCSR_FDX ;
 int CIPHY_AUXCSR_MDPPS ;
 int CIPHY_AUXCSR_SPEED ;
 int CIPHY_ECTL1_INTSEL ;
 int CIPHY_ECTL1_IOVOL ;
 int CIPHY_INTSEL_RGMII ;
 int CIPHY_IOVOL_2500MV ;
 int CIPHY_LED_LINKACTBLINK ;
 int CIPHY_MII_10BTCSR ;
 int CIPHY_MII_AUXCSR ;
 int CIPHY_MII_ECTL1 ;
 int CIPHY_MII_LED ;
 int CIPHY_MII_PHYIDR2 ;
 int CIPHY_SPEED10 ;
 int CIPHY_SPEED100 ;
 int MII_MODEL (int) ;
 int PHY_CLRBIT (struct mii_softc*,int ,int) ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_SETBIT (struct mii_softc*,int ,int) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ mii_phy_mac_match (struct mii_softc*,char*) ;

__attribute__((used)) static void
ciphy_fixup(struct mii_softc *sc)
{
 uint16_t model;
 uint16_t status, speed;
 uint16_t val;

 model = MII_MODEL(PHY_READ(sc, CIPHY_MII_PHYIDR2));
 status = PHY_READ(sc, CIPHY_MII_AUXCSR);
 speed = status & CIPHY_AUXCSR_SPEED;

 if (mii_phy_mac_match(sc, "nfe")) {

  val = PHY_READ(sc, CIPHY_MII_ECTL1);
  val &= ~(CIPHY_ECTL1_IOVOL | CIPHY_ECTL1_INTSEL);
  val |= (CIPHY_IOVOL_2500MV | CIPHY_INTSEL_RGMII);
  PHY_WRITE(sc, CIPHY_MII_ECTL1, val);

  val = PHY_READ(sc, CIPHY_MII_AUXCSR);
  val |= CIPHY_AUXCSR_MDPPS;
  PHY_WRITE(sc, CIPHY_MII_AUXCSR, val);
  val = PHY_READ(sc, CIPHY_MII_10BTCSR);
  val |= CIPHY_10BTCSR_ECHO;
  PHY_WRITE(sc, CIPHY_MII_10BTCSR, val);
 }

 switch (model) {
 case 133:
 case 136:


  PHY_SETBIT(sc, CIPHY_MII_AUXCSR, CIPHY_AUXCSR_MDPPS);





  if ((speed == CIPHY_SPEED10 || speed == CIPHY_SPEED100) &&
      (status & CIPHY_AUXCSR_FDX)) {
   PHY_SETBIT(sc, CIPHY_MII_10BTCSR, CIPHY_10BTCSR_ECHO);
  } else {
   PHY_CLRBIT(sc, CIPHY_MII_10BTCSR, CIPHY_10BTCSR_ECHO);
  }


  PHY_SETBIT(sc, CIPHY_MII_LED, CIPHY_LED_LINKACTBLINK);

  break;

 case 135:
 case 134:





  if ((speed == CIPHY_SPEED10 || speed == CIPHY_SPEED100) &&
      (status & CIPHY_AUXCSR_FDX)) {
   PHY_SETBIT(sc, CIPHY_MII_10BTCSR, CIPHY_10BTCSR_ECHO);
  } else {
   PHY_CLRBIT(sc, CIPHY_MII_10BTCSR, CIPHY_10BTCSR_ECHO);
  }

  break;
 case 131:
 case 130:
 case 132:
 case 129:
 case 128:
  break;
 default:
  device_printf(sc->mii_dev, "unknown CICADA PHY model %x\n",
      model);
  break;
 }
}
