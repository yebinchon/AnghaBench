
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211com {int ic_nrunning; int ic_curchan; int ic_macaddr; int ic_vaps; } ;
struct run_softc {int* txpow20mhz; int mac_ver; scalar_t__ cmdq_key_set; int mac_rev; scalar_t__ rf_rev; int nrxchains; int ntxchains; int * sc_xfer; scalar_t__ cmdq_run; int sc_flags; int * led; TYPE_1__* bbp; int sc_dev; int * sc_epq; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_myaddr; } ;
struct TYPE_5__ {int val; int reg; } ;
struct TYPE_4__ {int reg; int val; } ;


 int RT2860_ASIC_VER_ID ;
 int RT2860_BBP_HRST ;
 int RT2860_DLY_PAPE_EN_SHIFT ;
 int RT2860_H2M_BBPAGENT ;
 int RT2860_H2M_MAILBOX ;
 int RT2860_HT_FBK_CFG1 ;
 int RT2860_LED_RADIO ;
 int RT2860_LG_FBK_CFG0 ;
 int RT2860_MAC_SRST ;
 int RT2860_MAC_STATUS_REG ;
 int RT2860_MAC_SYS_CTRL ;
 int RT2860_MAX_LEN_CFG ;
 int RT2860_MCU_CMD_LED1 ;
 int RT2860_MCU_CMD_LED2 ;
 int RT2860_MCU_CMD_LED3 ;
 int RT2860_PME_OEN ;
 int RT2860_RX_DMA_BUSY ;
 int RT2860_RX_STATUS_BUSY ;
 int RT2860_SKEY (int ,int ) ;
 int RT2860_SKEY_MODE_0_7 ;
 int RT2860_SYS_CTRL ;
 int RT2860_TXOP_CTRL_CFG ;
 int RT2860_TXOP_HLDR_ET ;
 int RT2860_TX_DMA_BUSY ;
 int RT2860_TX_PWR_CFG (int) ;
 int RT2860_TX_STATUS_BUSY ;
 int RT2860_TX_SW_CFG0 ;
 int RT2860_TX_WB_DDONE ;
 int RT2860_USB_DMA_CFG ;
 int RT2860_US_CYC_CNT ;
 int RT2860_WCID_ATTR (int ) ;
 int RT2860_WCID_ENTRY (int ) ;
 int RT2860_WMM_AIFSN_CFG ;
 int RT2860_WMM_CWMAX_CFG ;
 int RT2860_WMM_CWMIN_CFG ;
 int RT2860_WMM_TXOP0_CFG ;
 int RT2860_WMM_TXOP1_CFG ;
 int RT2860_WPDMA_GLO_CFG ;
 scalar_t__ RT3070_RF_3020 ;
 scalar_t__ RT5390_RF_5370 ;
 size_t RUN_BULK_RX ;
 scalar_t__ RUN_CMDQ_GO ;
 int RUN_EP_QUEUES ;
 int RUN_N_XFER ;
 int RUN_RUNNING ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*) ;
 int nitems (TYPE_2__*) ;
 TYPE_2__* rt2870_def_mac ;
 scalar_t__ run_bbp_init (struct run_softc*) ;
 int run_bbp_read (struct run_softc*,int,int*) ;
 int run_bbp_write (struct run_softc*,int,int) ;
 int run_delay (struct run_softc*,int) ;
 int run_disable_tsf (struct run_softc*) ;
 scalar_t__ run_load_microcode (struct run_softc*) ;
 int run_mcu_cmd (struct run_softc*,int ,int ) ;
 scalar_t__ run_read (struct run_softc*,int ,int*) ;
 scalar_t__ run_reset (struct run_softc*) ;
 int run_rt3070_rf_init (struct run_softc*) ;
 int run_rt3070_rf_setup (struct run_softc*) ;
 int run_rt3593_rf_init (struct run_softc*) ;
 int run_rt3593_rf_setup (struct run_softc*) ;
 int run_rt5390_rf_init (struct run_softc*) ;
 int run_rt5390_rf_setup (struct run_softc*) ;
 int run_set_chan (struct run_softc*,int ) ;
 int run_set_leds (struct run_softc*,int ) ;
 int run_set_macaddr (struct run_softc*,int ) ;
 int run_set_region_4 (struct run_softc*,int ,int ,int) ;
 int run_set_rx_antenna (struct run_softc*,int ) ;
 int run_setup_tx_list (struct run_softc*,int *) ;
 int run_stop (struct run_softc*) ;
 scalar_t__ run_txrx_enable (struct run_softc*) ;
 int run_updateprot_cb (struct ieee80211com*) ;
 int run_write (struct run_softc*,int ,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
run_init_locked(struct run_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint32_t tmp;
 uint8_t bbp1, bbp3;
 int i;
 int ridx;
 int ntries;

 if (ic->ic_nrunning > 1)
  return;

 run_stop(sc);

 if (run_load_microcode(sc) != 0) {
  device_printf(sc->sc_dev, "could not load 8051 microcode\n");
  goto fail;
 }

 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_ASIC_VER_ID, &tmp) != 0)
   goto fail;
  if (tmp != 0 && tmp != 0xffffffff)
   break;
  run_delay(sc, 10);
 }
 if (ntries == 100)
  goto fail;

 for (i = 0; i != RUN_EP_QUEUES; i++)
  run_setup_tx_list(sc, &sc->sc_epq[i]);

 run_set_macaddr(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
   goto fail;
  if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
   break;
  run_delay(sc, 10);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev, "timeout waiting for DMA engine\n");
  goto fail;
 }
 tmp &= 0xff0;
 tmp |= RT2860_TX_WB_DDONE;
 run_write(sc, RT2860_WPDMA_GLO_CFG, tmp);


 run_read(sc, RT2860_SYS_CTRL, &tmp);
 run_write(sc, RT2860_SYS_CTRL, tmp & ~RT2860_PME_OEN);

 run_write(sc, RT2860_MAC_SYS_CTRL,
     RT2860_BBP_HRST | RT2860_MAC_SRST);
 run_write(sc, RT2860_USB_DMA_CFG, 0);

 if (run_reset(sc) != 0) {
  device_printf(sc->sc_dev, "could not reset chipset\n");
  goto fail;
 }

 run_write(sc, RT2860_MAC_SYS_CTRL, 0);


 for (ridx = 0; ridx < 5; ridx++) {
  if (sc->txpow20mhz[ridx] == 0xffffffff)
   continue;
  run_write(sc, RT2860_TX_PWR_CFG(ridx), sc->txpow20mhz[ridx]);
 }

 for (i = 0; i < nitems(rt2870_def_mac); i++)
  run_write(sc, rt2870_def_mac[i].reg, rt2870_def_mac[i].val);
 run_write(sc, RT2860_WMM_AIFSN_CFG, 0x00002273);
 run_write(sc, RT2860_WMM_CWMIN_CFG, 0x00002344);
 run_write(sc, RT2860_WMM_CWMAX_CFG, 0x000034aa);

 if (sc->mac_ver >= 0x5390) {
  run_write(sc, RT2860_TX_SW_CFG0,
      4 << RT2860_DLY_PAPE_EN_SHIFT | 4);
  if (sc->mac_ver >= 0x5392) {
   run_write(sc, RT2860_MAX_LEN_CFG, 0x00002fff);
   if (sc->mac_ver == 0x5592) {
    run_write(sc, RT2860_HT_FBK_CFG1, 0xedcba980);
    run_write(sc, RT2860_TXOP_HLDR_ET, 0x00000082);
   } else {
    run_write(sc, RT2860_HT_FBK_CFG1, 0xedcb4980);
    run_write(sc, RT2860_LG_FBK_CFG0, 0xedcba322);
   }
  }
 } else if (sc->mac_ver == 0x3593) {
  run_write(sc, RT2860_TX_SW_CFG0,
      4 << RT2860_DLY_PAPE_EN_SHIFT | 2);
 } else if (sc->mac_ver >= 0x3070) {

  run_write(sc, RT2860_TX_SW_CFG0,
      4 << RT2860_DLY_PAPE_EN_SHIFT);
 }


 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_MAC_STATUS_REG, &tmp) != 0)
   goto fail;
  if (!(tmp & (RT2860_RX_STATUS_BUSY | RT2860_TX_STATUS_BUSY)))
   break;
  run_delay(sc, 10);
 }
 if (ntries == 100)
  goto fail;


 run_write(sc, RT2860_H2M_BBPAGENT, 0);
 run_write(sc, RT2860_H2M_MAILBOX, 0);
 run_delay(sc, 10);

 if (run_bbp_init(sc) != 0) {
  device_printf(sc->sc_dev, "could not initialize BBP\n");
  goto fail;
 }


 run_disable_tsf(sc);


 run_set_region_4(sc, RT2860_WCID_ENTRY(0), 0, 512);

 run_set_region_4(sc, RT2860_WCID_ATTR(0), 0, 8 * 32);


 if (sc->cmdq_key_set != RUN_CMDQ_GO) {

  run_set_region_4(sc, RT2860_SKEY(0, 0), 0, 8 * 32);

  run_set_region_4(sc, RT2860_SKEY_MODE_0_7, 0, 4);
 }

 run_read(sc, RT2860_US_CYC_CNT, &tmp);
 tmp = (tmp & ~0xff) | 0x1e;
 run_write(sc, RT2860_US_CYC_CNT, tmp);

 if (sc->mac_rev != 0x0101)
  run_write(sc, RT2860_TXOP_CTRL_CFG, 0x0000583f);

 run_write(sc, RT2860_WMM_TXOP0_CFG, 0);
 run_write(sc, RT2860_WMM_TXOP1_CFG, 48 << 16 | 96);


 if (sc->mac_ver < 0x3593) {
  for (i = 0; i < 10; i++) {
   if (sc->bbp[i].reg == 0 || sc->bbp[i].reg == 0xff)
    continue;
   run_bbp_write(sc, sc->bbp[i].reg, sc->bbp[i].val);
  }
 }


 if (sc->rf_rev == RT3070_RF_3020 || sc->rf_rev == RT5390_RF_5370)
  run_set_rx_antenna(sc, 0);


 (void)run_mcu_cmd(sc, RT2860_MCU_CMD_LED1, sc->led[0]);
 (void)run_mcu_cmd(sc, RT2860_MCU_CMD_LED2, sc->led[1]);
 (void)run_mcu_cmd(sc, RT2860_MCU_CMD_LED3, sc->led[2]);

 if (sc->mac_ver >= 0x5390)
  run_rt5390_rf_init(sc);
 else if (sc->mac_ver == 0x3593)
  run_rt3593_rf_init(sc);
 else if (sc->mac_ver >= 0x3070)
  run_rt3070_rf_init(sc);


 run_bbp_read(sc, 3, &bbp3);
 bbp3 &= ~(1 << 3 | 1 << 4);
 if (sc->nrxchains == 2)
  bbp3 |= 1 << 3;
 else if (sc->nrxchains == 3)
  bbp3 |= 1 << 4;
 run_bbp_write(sc, 3, bbp3);


 run_bbp_read(sc, 1, &bbp1);
 if (sc->ntxchains == 1)
  bbp1 &= ~(1 << 3 | 1 << 4);
 run_bbp_write(sc, 1, bbp1);

 if (sc->mac_ver >= 0x5390)
  run_rt5390_rf_setup(sc);
 else if (sc->mac_ver == 0x3593)
  run_rt3593_rf_setup(sc);
 else if (sc->mac_ver >= 0x3070)
  run_rt3070_rf_setup(sc);


 run_set_chan(sc, ic->ic_curchan);


 run_updateprot_cb(ic);


 run_set_leds(sc, RT2860_LED_RADIO);

 sc->sc_flags |= RUN_RUNNING;
 sc->cmdq_run = RUN_CMDQ_GO;

 for (i = 0; i != RUN_N_XFER; i++)
  usbd_xfer_set_stall(sc->sc_xfer[i]);

 usbd_transfer_start(sc->sc_xfer[RUN_BULK_RX]);

 if (run_txrx_enable(sc) != 0)
  goto fail;

 return;

fail:
 run_stop(sc);
}
