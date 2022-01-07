
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dot_clock; } ;
struct dwc_hdmi_softc {int sc_dev; TYPE_1__ sc_mode; } ;


 int CKCALCTRL_OVERRIDE ;
 int CKSYMTXCTRL_OVERRIDE ;
 int CKSYMTXCTRL_TX_CK_SYMON ;
 int CKSYMTXCTRL_TX_SYMON ;
 int CKSYMTXCTRL_TX_TRAON ;
 int CKSYMTXCTRL_TX_TRBON ;
 int CPCE_CTRL_185 ;
 int CPCE_CTRL_370 ;
 int CPCE_CTRL_45_25 ;
 int CPCE_CTRL_92_50 ;
 int DELAY (int) ;
 int GMPCTRL_185 ;
 int GMPCTRL_370 ;
 int GMPCTRL_45_25 ;
 int GMPCTRL_92_50 ;
 int HDMI_MC_FLOWCTRL ;
 int HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS ;
 int HDMI_MC_HEACPHY_RST ;
 int HDMI_MC_HEACPHY_RST_ASSERT ;
 int HDMI_MC_PHYRSTZ ;
 int HDMI_MC_PHYRSTZ_ASSERT ;
 int HDMI_MC_PHYRSTZ_DEASSERT ;
 int HDMI_PHY_I2CM_SLAVE_ADDR ;
 int HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2 ;
 int HDMI_PHY_I2C_CKCALCTRL ;
 int HDMI_PHY_I2C_CKSYMTXCTRL ;
 int HDMI_PHY_I2C_CPCE_CTRL ;
 int HDMI_PHY_I2C_CURRCTRL ;
 int HDMI_PHY_I2C_GMPCTRL ;
 int HDMI_PHY_I2C_MSM_CTRL ;
 int HDMI_PHY_I2C_PLLPHBYCTRL ;
 int HDMI_PHY_I2C_TXTERM ;
 int HDMI_PHY_I2C_VLEVCTRL ;
 int HDMI_PHY_STAT0 ;
 int HDMI_PHY_TX_PHY_LOCK ;
 int MSM_CTRL_FB_CLK ;
 int RD1 (struct dwc_hdmi_softc*,int ) ;
 int TXTERM_133 ;
 int VLEVCTRL_CK_LVL (int) ;
 int VLEVCTRL_TX_LVL (int) ;
 int WR1 (struct dwc_hdmi_softc*,int ,int ) ;
 int device_printf (int ,char*) ;
 int dwc_hdmi_phy_enable_power (struct dwc_hdmi_softc*,int) ;
 int dwc_hdmi_phy_enable_tmds (struct dwc_hdmi_softc*,int) ;
 int dwc_hdmi_phy_gen2_pddq (struct dwc_hdmi_softc*,int) ;
 int dwc_hdmi_phy_gen2_txpwron (struct dwc_hdmi_softc*,int) ;
 int dwc_hdmi_phy_i2c_write (struct dwc_hdmi_softc*,int,int ) ;
 int dwc_hdmi_phy_test_clear (struct dwc_hdmi_softc*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
dwc_hdmi_phy_configure(struct dwc_hdmi_softc *sc)
{
 uint8_t val;
 uint8_t msec;

 WR1(sc, HDMI_MC_FLOWCTRL, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS);


 dwc_hdmi_phy_gen2_txpwron(sc, 0);


 dwc_hdmi_phy_gen2_pddq(sc, 1);


 WR1(sc, HDMI_MC_PHYRSTZ, HDMI_MC_PHYRSTZ_DEASSERT);
 WR1(sc, HDMI_MC_PHYRSTZ, HDMI_MC_PHYRSTZ_ASSERT);

 WR1(sc, HDMI_MC_HEACPHY_RST, HDMI_MC_HEACPHY_RST_ASSERT);

 dwc_hdmi_phy_test_clear(sc, 1);
 WR1(sc, HDMI_PHY_I2CM_SLAVE_ADDR, HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2);
 dwc_hdmi_phy_test_clear(sc, 0);
 if (sc->sc_mode.dot_clock*1000 <= 45250000) {
  dwc_hdmi_phy_i2c_write(sc, CPCE_CTRL_45_25, HDMI_PHY_I2C_CPCE_CTRL);
  dwc_hdmi_phy_i2c_write(sc, GMPCTRL_45_25, HDMI_PHY_I2C_GMPCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 92500000) {
  dwc_hdmi_phy_i2c_write(sc, CPCE_CTRL_92_50, HDMI_PHY_I2C_CPCE_CTRL);
  dwc_hdmi_phy_i2c_write(sc, GMPCTRL_92_50, HDMI_PHY_I2C_GMPCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 185000000) {
  dwc_hdmi_phy_i2c_write(sc, CPCE_CTRL_185, HDMI_PHY_I2C_CPCE_CTRL);
  dwc_hdmi_phy_i2c_write(sc, GMPCTRL_185, HDMI_PHY_I2C_GMPCTRL);
 } else {
  dwc_hdmi_phy_i2c_write(sc, CPCE_CTRL_370, HDMI_PHY_I2C_CPCE_CTRL);
  dwc_hdmi_phy_i2c_write(sc, GMPCTRL_370, HDMI_PHY_I2C_GMPCTRL);
 }





 if (sc->sc_mode.dot_clock*1000 <= 54000000) {
  dwc_hdmi_phy_i2c_write(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 58400000) {
  dwc_hdmi_phy_i2c_write(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 72000000) {
  dwc_hdmi_phy_i2c_write(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 74250000) {
  dwc_hdmi_phy_i2c_write(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 118800000) {
  dwc_hdmi_phy_i2c_write(sc, 0x091c, HDMI_PHY_I2C_CURRCTRL);
 } else if (sc->sc_mode.dot_clock*1000 <= 216000000) {
  dwc_hdmi_phy_i2c_write(sc, 0x06dc, HDMI_PHY_I2C_CURRCTRL);
 } else {
  panic("Unsupported mode\n");
 }

 dwc_hdmi_phy_i2c_write(sc, 0x0000, HDMI_PHY_I2C_PLLPHBYCTRL);
 dwc_hdmi_phy_i2c_write(sc, MSM_CTRL_FB_CLK, HDMI_PHY_I2C_MSM_CTRL);

 dwc_hdmi_phy_i2c_write(sc, TXTERM_133, HDMI_PHY_I2C_TXTERM);


 dwc_hdmi_phy_i2c_write(sc, CKCALCTRL_OVERRIDE, HDMI_PHY_I2C_CKCALCTRL);

 if (sc->sc_mode.dot_clock*1000 > 148500000) {
  dwc_hdmi_phy_i2c_write(sc,CKSYMTXCTRL_OVERRIDE | CKSYMTXCTRL_TX_SYMON |
      CKSYMTXCTRL_TX_TRBON | CKSYMTXCTRL_TX_CK_SYMON, HDMI_PHY_I2C_CKSYMTXCTRL);
  dwc_hdmi_phy_i2c_write(sc, VLEVCTRL_TX_LVL(9) | VLEVCTRL_CK_LVL(9),
      HDMI_PHY_I2C_VLEVCTRL);
 } else {
  dwc_hdmi_phy_i2c_write(sc,CKSYMTXCTRL_OVERRIDE | CKSYMTXCTRL_TX_SYMON |
      CKSYMTXCTRL_TX_TRAON | CKSYMTXCTRL_TX_CK_SYMON, HDMI_PHY_I2C_CKSYMTXCTRL);
  dwc_hdmi_phy_i2c_write(sc, VLEVCTRL_TX_LVL(13) | VLEVCTRL_CK_LVL(13),
      HDMI_PHY_I2C_VLEVCTRL);
 }

 dwc_hdmi_phy_enable_power(sc, 1);


 dwc_hdmi_phy_enable_tmds(sc, 0);
 dwc_hdmi_phy_enable_tmds(sc, 1);


 dwc_hdmi_phy_gen2_txpwron(sc, 1);
 dwc_hdmi_phy_gen2_pddq(sc, 0);


 msec = 4;
 val = RD1(sc, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
 while (val == 0) {
  DELAY(1000);
  if (msec-- == 0) {
   device_printf(sc->sc_dev, "PHY PLL not locked\n");
   return (-1);
  }
  val = RD1(sc, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
 }

 return 1;
}
