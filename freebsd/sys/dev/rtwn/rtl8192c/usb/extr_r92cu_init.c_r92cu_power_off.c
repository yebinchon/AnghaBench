
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int rs_c2h_timeout; scalar_t__ rs_c2h_pending; scalar_t__ rs_c2h_paused; int rs_c2h_report; } ;


 int ENXIO ;
 scalar_t__ R92C_AFE_PLL_CTRL ;
 int R92C_AFE_XTAL_CTRL ;
 scalar_t__ R92C_APSD_CTRL ;
 int R92C_APSD_CTRL_OFF ;
 int R92C_APS_FSMCO ;
 int R92C_APS_FSMCO_AFSM_HSUS ;
 int R92C_APS_FSMCO_APDM_HOST ;
 int R92C_APS_FSMCO_PFM_ALDN ;
 int R92C_GPIO_IOSEL ;
 int R92C_GPIO_IO_SEL ;
 int R92C_GPIO_PIN_CTRL ;
 scalar_t__ R92C_LDOA15_CTRL ;
 int R92C_LDOA15_CTRL_OBUF ;
 int R92C_LDOV12D_CTRL ;
 int R92C_LDOV12D_CTRL_LDV12_EN ;
 int R92C_LEDCFG0 ;
 scalar_t__ R92C_MAC_PINMUX_CFG ;
 scalar_t__ R92C_MCUFWDL ;
 int R92C_MCUFWDL_RDY ;
 scalar_t__ R92C_RSV_CTRL ;
 scalar_t__ R92C_SPS0_CTRL ;
 int R92C_SYS_CLKR ;
 int R92C_SYS_CLKR_80M_SSC_DIS ;
 int R92C_SYS_CLKR_ANA8M ;
 int R92C_SYS_CLKR_ANAD16V_EN ;
 int R92C_SYS_CLKR_LOADER_EN ;
 int R92C_SYS_CLKR_RING_EN ;
 int R92C_SYS_CLKR_SYS_EN ;
 scalar_t__ R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_BB_GLB_RST ;
 int R92C_SYS_FUNC_EN_CPUEN ;
 int R92C_SYS_FUNC_EN_ELDR ;
 int R92C_SYS_FUNC_EN_HWPDN ;
 int R92C_SYS_FUNC_EN_USBA ;
 int R92C_SYS_FUNC_EN_USBD ;
 scalar_t__ R92C_SYS_ISO_CTRL ;
 int R92C_SYS_ISO_CTRL_DIOE ;
 int R92C_SYS_ISO_CTRL_DIOP ;
 int R92C_SYS_ISO_CTRL_DIOR ;
 int R92C_SYS_ISO_CTRL_IP2MAC ;
 int R92C_SYS_ISO_CTRL_MD2PP ;
 int R92C_SYS_ISO_CTRL_PA2PCIE ;
 int R92C_SYS_ISO_CTRL_PD2CORE ;
 int R92C_SYS_ISO_CTRL_PWC_EV12V ;
 scalar_t__ R92C_TXPAUSE ;
 int R92C_TX_QUEUE_ALL ;
 int RTWN_FW_RESET_SHUTDOWN ;
 int callout_stop (int *) ;
 int hz ;
 int r92c_fw_reset (struct rtwn_softc*,int ) ;
 int rtwn_read_1 (struct rtwn_softc*,scalar_t__) ;
 int rtwn_read_2 (struct rtwn_softc*,int ) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_rf_write (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r92cu_power_off(struct rtwn_softc *sc)
{

 struct r92c_softc *rs = sc->sc_priv;

 uint32_t reg;
 int error;



 callout_stop(&rs->rs_c2h_report);
 rs->rs_c2h_paused = 0;
 rs->rs_c2h_pending = 0;
 rs->rs_c2h_timeout = hz;



 error = rtwn_write_1(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);
 if (error == ENXIO)
  return;


 rtwn_rf_write(sc, 0, 0, 0);

 rtwn_write_1(sc, R92C_APSD_CTRL, R92C_APSD_CTRL_OFF);


 rtwn_write_1(sc, R92C_SYS_FUNC_EN,
     R92C_SYS_FUNC_EN_USBD | R92C_SYS_FUNC_EN_USBA |
     R92C_SYS_FUNC_EN_BB_GLB_RST);
 rtwn_write_1(sc, R92C_SYS_FUNC_EN,
     R92C_SYS_FUNC_EN_USBD | R92C_SYS_FUNC_EN_USBA);





 if (rtwn_read_1(sc, R92C_MCUFWDL) & R92C_MCUFWDL_RDY) {

  rtwn_write_1(sc, R92C_MCUFWDL, 0);


  r92c_fw_reset(sc, RTWN_FW_RESET_SHUTDOWN);
 }



 rtwn_write_1(sc, R92C_SYS_FUNC_EN + 1,
     (R92C_SYS_FUNC_EN_CPUEN |
      R92C_SYS_FUNC_EN_ELDR |
      R92C_SYS_FUNC_EN_HWPDN) >> 8);


 rtwn_write_1(sc, R92C_MCUFWDL, 0);


 rtwn_write_2(sc, R92C_SYS_CLKR,
     R92C_SYS_CLKR_ANAD16V_EN |
     R92C_SYS_CLKR_ANA8M |
     R92C_SYS_CLKR_LOADER_EN |
     R92C_SYS_CLKR_80M_SSC_DIS |
     R92C_SYS_CLKR_SYS_EN |
     R92C_SYS_CLKR_RING_EN |
     0x4000);


 rtwn_write_1(sc, R92C_AFE_PLL_CTRL, 0x80);


 rtwn_write_2(sc, R92C_AFE_XTAL_CTRL, 0x880F);


 rtwn_write_1(sc, R92C_SYS_ISO_CTRL,
     R92C_SYS_ISO_CTRL_MD2PP |
     R92C_SYS_ISO_CTRL_PA2PCIE |
     R92C_SYS_ISO_CTRL_PD2CORE |
     R92C_SYS_ISO_CTRL_IP2MAC |
     R92C_SYS_ISO_CTRL_DIOP |
     R92C_SYS_ISO_CTRL_DIOE);





 rtwn_write_2(sc, R92C_GPIO_IOSEL, 0x0000);

 reg = rtwn_read_4(sc, R92C_GPIO_PIN_CTRL) & ~0x0000ff00;
 reg |= ((reg << 8) & 0x0000ff00) | 0x00ff0000;
 rtwn_write_4(sc, R92C_GPIO_PIN_CTRL, reg);


 rtwn_write_1(sc, R92C_MAC_PINMUX_CFG, 0x00);

 reg = rtwn_read_2(sc, R92C_GPIO_IO_SEL) & ~0x00f0;
 reg |= (((reg & 0x000f) << 4) | 0x0780);
 rtwn_write_2(sc, R92C_GPIO_IO_SEL, reg);


 rtwn_write_2(sc, R92C_LEDCFG0, 0x8080);





 rtwn_write_2(sc, R92C_SYS_CLKR,
     R92C_SYS_CLKR_ANAD16V_EN |
     R92C_SYS_CLKR_ANA8M |
     R92C_SYS_CLKR_LOADER_EN |
     R92C_SYS_CLKR_80M_SSC_DIS |
     R92C_SYS_CLKR_SYS_EN |
     R92C_SYS_CLKR_RING_EN |
     0x4000);


 rtwn_write_1(sc, R92C_SYS_ISO_CTRL + 1,
     (R92C_SYS_ISO_CTRL_DIOR |
      R92C_SYS_ISO_CTRL_PWC_EV12V) >> 8);





 rtwn_write_1(sc, R92C_LDOA15_CTRL, R92C_LDOA15_CTRL_OBUF);

 rtwn_setbits_1(sc, R92C_LDOV12D_CTRL,
     R92C_LDOV12D_CTRL_LDV12_EN, 0);


 rtwn_write_1(sc, R92C_SPS0_CTRL, 0x23);


 rtwn_write_2(sc, R92C_APS_FSMCO,
     R92C_APS_FSMCO_APDM_HOST |
     R92C_APS_FSMCO_AFSM_HSUS |
     R92C_APS_FSMCO_PFM_ALDN);


 rtwn_write_1(sc, R92C_RSV_CTRL, 0x0E);
}
