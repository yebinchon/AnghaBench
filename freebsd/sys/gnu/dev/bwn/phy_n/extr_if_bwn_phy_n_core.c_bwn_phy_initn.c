
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_12__ {int board_flags; int board_flags2; scalar_t__ board_vendor; scalar_t__ board_type; } ;
struct bwn_softc {TYPE_6__ sc_board_info; int sc_chipc; int sc_dev; } ;
struct TYPE_10__ {int center_freq; } ;
struct TYPE_9__ {int center_freq; } ;
struct TYPE_8__ {int center_freq; } ;
struct TYPE_7__ {int center_freq; } ;
struct bwn_phy_n {int use_int_tx_iq_lo_cal; int crsminpwr_adjusted; int noisevars_adjusted; int* papd_epsilon_offset; int txpwrctrl; int phyrxchain; scalar_t__ mphase_cal_phase_id; int measure_hold; int antsel_type; int perical; TYPE_5__* txpwrindex; int * cal_orig_pwr_idx; scalar_t__ mute; TYPE_4__ iqcal_chanspec_5G; TYPE_3__ iqcal_chanspec_2G; TYPE_2__ rssical_chanspec_5G; TYPE_1__ rssical_chanspec_2G; int preamble_override; scalar_t__ deaf_count; scalar_t__ tsspos_2g; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_nphy_txgains {int dummy; } ;
struct bwn_mac {struct bwn_phy mac_phy; struct bwn_softc* mac_sc; } ;
typedef scalar_t__ bwn_band_t ;
struct TYPE_11__ {int index_internal; } ;


 int BHND_BFL2_INTERNDET_TXIQCAL ;
 int BHND_BFL2_SKWRKFEM_BRD ;
 int BHND_BFL_EXTLNA ;
 scalar_t__ BHND_BOARD_BCM943224M93 ;
 int BHND_CHIPC_WRITE_CHIPCTRL (int ,int,int) ;
 int BHND_NVAR_TSSIPOS2G ;
 scalar_t__ BWN_BAND_2G ;
 int BWN_ERRPRINTF (struct bwn_softc*,char*,int ,int) ;
 int BWN_NPHY_AFECTL_OVER ;
 int BWN_NPHY_AFECTL_OVER1 ;
 int BWN_NPHY_AFESEQ_TX2RX_PUD_20M ;
 int BWN_NPHY_AFESEQ_TX2RX_PUD_40M ;
 int BWN_NPHY_BBCFG ;
 int BWN_NPHY_BBCFG_RSTCCA ;
 int BWN_NPHY_BPHY_CTL3 ;
 int BWN_NPHY_BPHY_CTL3_SCALE ;
 int BWN_NPHY_BPHY_CTL3_SCALE_SHIFT ;
 int BWN_NPHY_DUP40_BL ;
 int BWN_NPHY_DUP40_GFBL ;
 int BWN_NPHY_EPS_TABLE_ADJ0 ;
 int BWN_NPHY_EPS_TABLE_ADJ1 ;
 int BWN_NPHY_MIMO_CRSTXEXT ;
 int BWN_NPHY_PAPD_EN0 ;
 int BWN_NPHY_PAPD_EN1 ;
 int BWN_NPHY_PLOAD_CSENSE_EXTLEN ;
 int BWN_NPHY_REV7_RF_CTL_OVER3 ;
 int BWN_NPHY_REV7_RF_CTL_OVER4 ;
 int BWN_NPHY_REV7_RF_CTL_OVER5 ;
 int BWN_NPHY_REV7_RF_CTL_OVER6 ;
 int BWN_NPHY_RFCTL_INTC1 ;
 int BWN_NPHY_RFCTL_INTC2 ;
 int BWN_NPHY_RFCTL_INTC3 ;
 int BWN_NPHY_RFCTL_INTC4 ;
 int BWN_NPHY_RFCTL_OVER ;
 int BWN_NPHY_RFSEQMODE ;
 int BWN_NPHY_RFSEQMODE_CAOVER ;
 int BWN_NPHY_RFSEQMODE_TROVER ;
 int BWN_NPHY_TXF_40CO_B1S0 ;
 int BWN_NPHY_TXF_40CO_B1S1 ;
 int BWN_NPHY_TXF_40CO_B32S1 ;
 int BWN_NPHY_TXMACDELAY ;
 int BWN_NPHY_TXMACIF_HOLDOFF ;
 int BWN_NPHY_TXREALFD ;
 int BWN_NPHY_TXRIFS_FRDEL ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int BWN_RFSEQ_RESET2RX ;
 int BWN_RFSEQ_RX2TX ;
 scalar_t__ PCI_VENDOR_APPLE ;
 int bhnd_nvram_getvar_uint8 (int ,int ,scalar_t__*) ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_mac_phy_clock_set (struct bwn_mac*,int) ;
 int bwn_nphy_bphy_init (struct bwn_mac*) ;
 scalar_t__ bwn_nphy_cal_rx_iq (struct bwn_mac*,struct bwn_nphy_txgains,int,int ) ;
 int bwn_nphy_cal_tx_iq_lo (struct bwn_mac*,struct bwn_nphy_txgains,int,int) ;
 int bwn_nphy_classifier (struct bwn_mac*,int ,int ) ;
 int bwn_nphy_ext_pa_set_tx_dig_filters (struct bwn_mac*) ;
 int bwn_nphy_force_rf_sequence (struct bwn_mac*,int ) ;
 struct bwn_nphy_txgains bwn_nphy_get_tx_gains (struct bwn_mac*) ;
 int bwn_nphy_int_pa_set_tx_dig_filters (struct bwn_mac*) ;
 scalar_t__ bwn_nphy_ipa (struct bwn_mac*) ;
 int bwn_nphy_pa_override (struct bwn_mac*,int) ;
 int bwn_nphy_read_clip_detection (struct bwn_mac*,int*) ;
 int bwn_nphy_restore_cal (struct bwn_mac*) ;
 int bwn_nphy_restore_rssi_cal (struct bwn_mac*) ;
 int bwn_nphy_rssi_cal (struct bwn_mac*) ;
 int bwn_nphy_save_cal (struct bwn_mac*) ;
 int bwn_nphy_set_rx_core_state (struct bwn_mac*,int) ;
 int bwn_nphy_spur_workaround (struct bwn_mac*) ;
 int bwn_nphy_superswitch_init (struct bwn_mac*,int) ;
 int bwn_nphy_tables_init (struct bwn_mac*) ;
 int bwn_nphy_tx_gain_table_upload (struct bwn_mac*) ;
 int bwn_nphy_tx_lpf_bw (struct bwn_mac*) ;
 int bwn_nphy_tx_power_ctl_idle_tssi (struct bwn_mac*) ;
 int bwn_nphy_tx_power_ctl_setup (struct bwn_mac*) ;
 int bwn_nphy_tx_power_ctrl (struct bwn_mac*,int) ;
 int bwn_nphy_tx_power_fix (struct bwn_mac*) ;
 int bwn_nphy_tx_pwr_ctrl_coef_setup (struct bwn_mac*) ;
 int bwn_nphy_update_mimo_config (struct bwn_mac*,int ) ;
 int bwn_nphy_update_txrx_chain (struct bwn_mac*) ;
 int bwn_nphy_workarounds (struct bwn_mac*) ;
 int bwn_phy_force_clock (struct bwn_mac*,int) ;

__attribute__((used)) static int bwn_phy_initn(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = phy->phy_n;
 uint8_t tx_pwr_state;
 struct bwn_nphy_txgains target;
 int error;
 uint16_t tmp;
 bwn_band_t tmp2;
 bool do_rssi_cal;

 uint16_t clip[2];
 bool do_cal = 0;

 if (mac->mac_phy.rev >= 3) {
  error = bhnd_nvram_getvar_uint8(sc->sc_dev, BHND_NVAR_TSSIPOS2G,
      &nphy->tsspos_2g);
  if (error) {
   BWN_ERRPRINTF(mac->mac_sc, "Error reading %s from "
       "NVRAM: %d\n", BHND_NVAR_TSSIPOS2G, error);
   return (error);
  }
 } else {
  nphy->tsspos_2g = 0;
 }

 if ((mac->mac_phy.rev >= 3) &&
    (sc->sc_board_info.board_flags & BHND_BFL_EXTLNA) &&
    (bwn_current_band(mac) == BWN_BAND_2G))
 {
  BHND_CHIPC_WRITE_CHIPCTRL(sc->sc_chipc, 0x40, 0x40);
 }
 nphy->use_int_tx_iq_lo_cal = bwn_nphy_ipa(mac) ||
  phy->rev >= 7 ||
  (phy->rev >= 5 &&
   sc->sc_board_info.board_flags2 & BHND_BFL2_INTERNDET_TXIQCAL);
 nphy->deaf_count = 0;
 bwn_nphy_tables_init(mac);
 nphy->crsminpwr_adjusted = 0;
 nphy->noisevars_adjusted = 0;


 if (mac->mac_phy.rev >= 3) {
  BWN_PHY_WRITE(mac, BWN_NPHY_TXF_40CO_B1S1, 0);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_OVER, 0);
  if (phy->rev >= 7) {
   BWN_PHY_WRITE(mac, BWN_NPHY_REV7_RF_CTL_OVER3, 0);
   BWN_PHY_WRITE(mac, BWN_NPHY_REV7_RF_CTL_OVER4, 0);
   BWN_PHY_WRITE(mac, BWN_NPHY_REV7_RF_CTL_OVER5, 0);
   BWN_PHY_WRITE(mac, BWN_NPHY_REV7_RF_CTL_OVER6, 0);
  }
  if (phy->rev >= 19) {

  }

  BWN_PHY_WRITE(mac, BWN_NPHY_TXF_40CO_B1S0, 0);
  BWN_PHY_WRITE(mac, BWN_NPHY_TXF_40CO_B32S1, 0);
 } else {
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_OVER, 0);
 }
 BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC1, 0);
 BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC2, 0);
 if (mac->mac_phy.rev < 6) {
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC3, 0);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC4, 0);
 }
 BWN_PHY_MASK(mac, BWN_NPHY_RFSEQMODE,
       ~(BWN_NPHY_RFSEQMODE_CAOVER |
         BWN_NPHY_RFSEQMODE_TROVER));
 if (mac->mac_phy.rev >= 3)
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_OVER1, 0);
 BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_OVER, 0);

 if (mac->mac_phy.rev <= 2) {
  tmp = (mac->mac_phy.rev == 2) ? 0x3B : 0x40;
  BWN_PHY_SETMASK(mac, BWN_NPHY_BPHY_CTL3,
    ~BWN_NPHY_BPHY_CTL3_SCALE,
    tmp << BWN_NPHY_BPHY_CTL3_SCALE_SHIFT);
 }
 BWN_PHY_WRITE(mac, BWN_NPHY_AFESEQ_TX2RX_PUD_20M, 0x20);
 BWN_PHY_WRITE(mac, BWN_NPHY_AFESEQ_TX2RX_PUD_40M, 0x20);

 if (sc->sc_board_info.board_flags2 & BHND_BFL2_SKWRKFEM_BRD ||
     (sc->sc_board_info.board_vendor == PCI_VENDOR_APPLE &&
      sc->sc_board_info.board_type == BHND_BOARD_BCM943224M93))
  BWN_PHY_WRITE(mac, BWN_NPHY_TXREALFD, 0xA0);
 else
  BWN_PHY_WRITE(mac, BWN_NPHY_TXREALFD, 0xB8);
 BWN_PHY_WRITE(mac, BWN_NPHY_MIMO_CRSTXEXT, 0xC8);
 BWN_PHY_WRITE(mac, BWN_NPHY_PLOAD_CSENSE_EXTLEN, 0x50);
 BWN_PHY_WRITE(mac, BWN_NPHY_TXRIFS_FRDEL, 0x30);

 if (phy->rev < 8)
  bwn_nphy_update_mimo_config(mac, nphy->preamble_override);

 bwn_nphy_update_txrx_chain(mac);

 if (phy->rev < 2) {
  BWN_PHY_WRITE(mac, BWN_NPHY_DUP40_GFBL, 0xAA8);
  BWN_PHY_WRITE(mac, BWN_NPHY_DUP40_BL, 0x9A4);
 }

 tmp2 = bwn_current_band(mac);
 if (bwn_nphy_ipa(mac)) {
  BWN_PHY_SET(mac, BWN_NPHY_PAPD_EN0, 0x1);
  BWN_PHY_SETMASK(mac, BWN_NPHY_EPS_TABLE_ADJ0, 0x007F,
    nphy->papd_epsilon_offset[0] << 7);
  BWN_PHY_SET(mac, BWN_NPHY_PAPD_EN1, 0x1);
  BWN_PHY_SETMASK(mac, BWN_NPHY_EPS_TABLE_ADJ1, 0x007F,
    nphy->papd_epsilon_offset[1] << 7);
  bwn_nphy_int_pa_set_tx_dig_filters(mac);
 } else if (phy->rev >= 5) {
  bwn_nphy_ext_pa_set_tx_dig_filters(mac);
 }

 if ((error = bwn_nphy_workarounds(mac)))
  return (error);


 bwn_phy_force_clock(mac, 1);
 tmp = BWN_PHY_READ(mac, BWN_NPHY_BBCFG);
 BWN_PHY_WRITE(mac, BWN_NPHY_BBCFG, tmp | BWN_NPHY_BBCFG_RSTCCA);
 BWN_PHY_WRITE(mac, BWN_NPHY_BBCFG, tmp & ~BWN_NPHY_BBCFG_RSTCCA);
 bwn_phy_force_clock(mac, 0);

 bwn_mac_phy_clock_set(mac, 1);

 if (phy->rev < 7) {
  bwn_nphy_pa_override(mac, 0);
  bwn_nphy_force_rf_sequence(mac, BWN_RFSEQ_RX2TX);
  bwn_nphy_force_rf_sequence(mac, BWN_RFSEQ_RESET2RX);
  bwn_nphy_pa_override(mac, 1);
 }

 bwn_nphy_classifier(mac, 0, 0);
 bwn_nphy_read_clip_detection(mac, clip);
 if (bwn_current_band(mac) == BWN_BAND_2G)
  bwn_nphy_bphy_init(mac);

 tx_pwr_state = nphy->txpwrctrl;
 bwn_nphy_tx_power_ctrl(mac, 0);
 if ((error = bwn_nphy_tx_power_fix(mac)))
  return (error);
 bwn_nphy_tx_power_ctl_idle_tssi(mac);
 bwn_nphy_tx_power_ctl_setup(mac);
 bwn_nphy_tx_gain_table_upload(mac);

 if (nphy->phyrxchain != 3)
  bwn_nphy_set_rx_core_state(mac, nphy->phyrxchain);
 if (nphy->mphase_cal_phase_id > 0)
  ;

 do_rssi_cal = 0;
 if (phy->rev >= 3) {
  if (bwn_current_band(mac) == BWN_BAND_2G)
   do_rssi_cal = !nphy->rssical_chanspec_2G.center_freq;
  else
   do_rssi_cal = !nphy->rssical_chanspec_5G.center_freq;

  if (do_rssi_cal)
   bwn_nphy_rssi_cal(mac);
  else
   bwn_nphy_restore_rssi_cal(mac);
 } else {
  bwn_nphy_rssi_cal(mac);
 }

 if (!((nphy->measure_hold & 0x6) != 0)) {
  if (bwn_current_band(mac) == BWN_BAND_2G)
   do_cal = !nphy->iqcal_chanspec_2G.center_freq;
  else
   do_cal = !nphy->iqcal_chanspec_5G.center_freq;

  if (nphy->mute)
   do_cal = 0;

  if (do_cal) {
   target = bwn_nphy_get_tx_gains(mac);

   if (nphy->antsel_type == 2) {
    error = bwn_nphy_superswitch_init(mac, 1);
    if (error)
     return (error);
   }
   if (nphy->perical != 2) {
    bwn_nphy_rssi_cal(mac);
    if (phy->rev >= 3) {
     nphy->cal_orig_pwr_idx[0] =
         nphy->txpwrindex[0].index_internal;
     nphy->cal_orig_pwr_idx[1] =
         nphy->txpwrindex[1].index_internal;

     target = bwn_nphy_get_tx_gains(mac);
    }
    if (!bwn_nphy_cal_tx_iq_lo(mac, target, 1, 0))
     if (bwn_nphy_cal_rx_iq(mac, target, 2, 0) == 0)
      bwn_nphy_save_cal(mac);
   } else if (nphy->mphase_cal_phase_id == 0)
    ;
  } else {
   bwn_nphy_restore_cal(mac);
  }
 }

 bwn_nphy_tx_pwr_ctrl_coef_setup(mac);
 bwn_nphy_tx_power_ctrl(mac, tx_pwr_state);
 BWN_PHY_WRITE(mac, BWN_NPHY_TXMACIF_HOLDOFF, 0x0015);
 BWN_PHY_WRITE(mac, BWN_NPHY_TXMACDELAY, 0x0320);
 if (phy->rev >= 3 && phy->rev <= 6)
  BWN_PHY_WRITE(mac, BWN_NPHY_PLOAD_CSENSE_EXTLEN, 0x0032);
 bwn_nphy_tx_lpf_bw(mac);
 if (phy->rev >= 3)
  bwn_nphy_spur_workaround(mac);

 return 0;
}
