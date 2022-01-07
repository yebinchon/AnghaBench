
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int rs_c2h_timeout; scalar_t__ rs_c2h_pending; scalar_t__ rs_c2h_paused; int rs_c2h_report; } ;


 int R92C_AFE_PLL_CTRL ;
 int R92C_AFE_XTAL_CTRL ;
 int R92C_APS_FSMCO ;
 int R92C_APS_FSMCO_PDN_EN ;
 int R92C_CR ;
 int R92C_CR_ENSEC ;
 int R92C_CR_HCI_RXDMA_EN ;
 int R92C_CR_HCI_TXDMA_EN ;
 int R92C_CR_MACRXEN ;
 int R92C_CR_MACTXEN ;
 int R92C_CR_PROTOCOL_EN ;
 int R92C_CR_RXDMA_EN ;
 int R92C_CR_SCHEDULE_EN ;
 int R92C_CR_TXDMA_EN ;
 int R92C_HIMR ;
 int R92C_HISR ;
 int R92C_MCUFWDL ;
 int R92C_MCUFWDL_RAM_DL_SEL ;
 int R92C_RF_CTRL ;
 int R92C_RSV_CTRL ;
 int R92C_SPS0_CTRL ;
 int R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_BB_GLB_RST ;
 int R92C_TXPAUSE ;
 int R92C_TX_QUEUE_ALL ;
 int RTWN_FW_RESET_SHUTDOWN ;
 int callout_stop (int *) ;
 int hz ;
 int r92ce_fw_reset (struct rtwn_softc*,int ) ;
 int rtwn_read_1 (struct rtwn_softc*,int ) ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_setbits_2 (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
r92ce_power_off(struct rtwn_softc *sc)
{

 struct r92c_softc *rs = sc->sc_priv;


 callout_stop(&rs->rs_c2h_report);
 rs->rs_c2h_paused = 0;
 rs->rs_c2h_pending = 0;
 rs->rs_c2h_timeout = hz;




 rtwn_write_4(sc, R92C_HISR, 0);
 rtwn_write_4(sc, R92C_HIMR, 0);


 rtwn_write_1(sc, R92C_TXPAUSE, R92C_TX_QUEUE_ALL);


 rtwn_write_1(sc, R92C_RF_CTRL, 0);


 rtwn_setbits_1(sc, R92C_SYS_FUNC_EN, 0, R92C_SYS_FUNC_EN_BB_GLB_RST);
 rtwn_setbits_1(sc, R92C_SYS_FUNC_EN, R92C_SYS_FUNC_EN_BB_GLB_RST, 0);


 rtwn_setbits_2(sc, R92C_CR,
     R92C_CR_HCI_TXDMA_EN | R92C_CR_HCI_RXDMA_EN |
     R92C_CR_TXDMA_EN | R92C_CR_RXDMA_EN | R92C_CR_PROTOCOL_EN |
     R92C_CR_SCHEDULE_EN | R92C_CR_MACTXEN | R92C_CR_MACRXEN |
     R92C_CR_ENSEC,
     0);



 if (rtwn_read_1(sc, R92C_MCUFWDL) & R92C_MCUFWDL_RAM_DL_SEL)
  r92ce_fw_reset(sc, RTWN_FW_RESET_SHUTDOWN);



 rtwn_write_2(sc, R92C_AFE_PLL_CTRL, 0x80);
 rtwn_write_1(sc, R92C_SPS0_CTRL, 0x23);
 rtwn_write_1(sc, R92C_AFE_XTAL_CTRL, 0x0e);
 rtwn_write_1(sc, R92C_RSV_CTRL, 0x0e);
 rtwn_write_1(sc, R92C_APS_FSMCO, R92C_APS_FSMCO_PDN_EN);
}
