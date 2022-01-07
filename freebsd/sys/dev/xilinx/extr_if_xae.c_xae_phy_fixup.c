
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int dev; } ;
typedef int device_t ;


 int BMCR_AUTOEN ;
 int BMCR_FDX ;
 int BMCR_RESET ;
 int BMCR_SPEED1 ;
 int BMCR_STARTNEG ;
 int BMSR_ACOMP ;
 int CFG2_INTERRUPT_POLARITY ;
 int CFG2_SPEED_OPT_10M_EN ;
 int CFG2_SPEED_OPT_ATTEMPT_CNT_4 ;
 int CFG2_SPEED_OPT_ATTEMPT_CNT_M ;
 int CFG2_SPEED_OPT_ENHANCED_EN ;
 int CFG4_SGMII_TMR ;
 int DELAY (int) ;
 int DP83867_CFG2 ;
 int DP83867_CFG4 ;
 int DP83867_PHYCR ;
 int DP83867_SGMIICTL1 ;
 int MII_BMCR ;
 int MII_BMSR ;
 int PHY1_RD (struct xae_softc*,int ) ;
 int PHY1_WR (struct xae_softc*,int ,int) ;
 int PHYCR_SGMII_EN ;
 int PHY_RD (struct xae_softc*,int ) ;
 int PHY_WR (struct xae_softc*,int ,int) ;
 int SGMIICTL1_SGMII_6W ;
 int WRITE_TI_EREG (struct xae_softc*,int ,int ) ;

__attribute__((used)) static void
xae_phy_fixup(struct xae_softc *sc)
{
 uint32_t reg;
 device_t dev;

 dev = sc->dev;

 do {
  WRITE_TI_EREG(sc, DP83867_SGMIICTL1, SGMIICTL1_SGMII_6W);
  PHY_WR(sc, DP83867_PHYCR, PHYCR_SGMII_EN);

  reg = PHY_RD(sc, DP83867_CFG2);
  reg &= ~CFG2_SPEED_OPT_ATTEMPT_CNT_M;
  reg |= (CFG2_SPEED_OPT_ATTEMPT_CNT_4);
  reg |= CFG2_INTERRUPT_POLARITY;
  reg |= CFG2_SPEED_OPT_ENHANCED_EN;
  reg |= CFG2_SPEED_OPT_10M_EN;
  PHY_WR(sc, DP83867_CFG2, reg);

  WRITE_TI_EREG(sc, DP83867_CFG4, CFG4_SGMII_TMR);
  PHY_WR(sc, MII_BMCR,
      BMCR_AUTOEN | BMCR_FDX | BMCR_SPEED1 | BMCR_RESET);
 } while (PHY1_RD(sc, MII_BMCR) == 0x0ffff);

 do {
  PHY1_WR(sc, MII_BMCR,
      BMCR_AUTOEN | BMCR_FDX | BMCR_SPEED1 | BMCR_STARTNEG);
  DELAY(40000);
 } while ((PHY1_RD(sc, MII_BMSR) & BMSR_ACOMP) == 0);
}
