
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwn_phy_n_iq_comp {int dummy; } ;
struct TYPE_2__ {int * txcal_coeffs_5G; int * txcal_radio_regs_5G; struct bwn_phy_n_iq_comp rxcal_coeffs_5G; int * txcal_coeffs_2G; int * txcal_radio_regs_2G; struct bwn_phy_n_iq_comp rxcal_coeffs_2G; } ;
struct bwn_chanspec {int channel_type; int center_freq; } ;
struct bwn_phy_n {scalar_t__ hang_avoid; TYPE_1__ cal_cache; struct bwn_chanspec iqcal_chanspec_5G; struct bwn_chanspec iqcal_chanspec_2G; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 scalar_t__ BWN_BAND_2G ;
 int BWN_NTAB16 (int,int) ;
 int BWN_RF_READ (struct bwn_mac*,int) ;
 int R2057_TX0_LOFT_COARSE_I ;
 int R2057_TX0_LOFT_COARSE_Q ;
 int R2057_TX0_LOFT_FINE_I ;
 int R2057_TX0_LOFT_FINE_Q ;
 int R2057_TX1_LOFT_COARSE_I ;
 int R2057_TX1_LOFT_COARSE_Q ;
 int R2057_TX1_LOFT_FINE_I ;
 int R2057_TX1_LOFT_FINE_Q ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_get_centre_freq (struct bwn_mac*) ;
 int bwn_get_chan_type (struct bwn_mac*,int *) ;
 int bwn_nphy_rx_iq_coeffs (struct bwn_mac*,int,struct bwn_phy_n_iq_comp*) ;
 int bwn_nphy_stay_in_carrier_search (struct bwn_mac*,int) ;
 int bwn_ntab_read_bulk (struct bwn_mac*,int ,int,int *) ;

__attribute__((used)) static void bwn_nphy_save_cal(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

 struct bwn_phy_n_iq_comp *rxcal_coeffs = ((void*)0);
 uint16_t *txcal_radio_regs = ((void*)0);
 struct bwn_chanspec *iqcal_chanspec;
 uint16_t *table = ((void*)0);

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 1);

 if (bwn_current_band(mac) == BWN_BAND_2G) {
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
  iqcal_chanspec = &nphy->iqcal_chanspec_2G;
  table = nphy->cal_cache.txcal_coeffs_2G;
 } else {
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
  iqcal_chanspec = &nphy->iqcal_chanspec_5G;
  table = nphy->cal_cache.txcal_coeffs_5G;
 }

 bwn_nphy_rx_iq_coeffs(mac, 0, rxcal_coeffs);

 if (phy->rev >= 19) {

 } else if (phy->rev >= 7) {
  txcal_radio_regs[0] = BWN_RF_READ(mac,
           R2057_TX0_LOFT_FINE_I);
  txcal_radio_regs[1] = BWN_RF_READ(mac,
           R2057_TX0_LOFT_FINE_Q);
  txcal_radio_regs[4] = BWN_RF_READ(mac,
           R2057_TX0_LOFT_COARSE_I);
  txcal_radio_regs[5] = BWN_RF_READ(mac,
           R2057_TX0_LOFT_COARSE_Q);
  txcal_radio_regs[2] = BWN_RF_READ(mac,
           R2057_TX1_LOFT_FINE_I);
  txcal_radio_regs[3] = BWN_RF_READ(mac,
           R2057_TX1_LOFT_FINE_Q);
  txcal_radio_regs[6] = BWN_RF_READ(mac,
           R2057_TX1_LOFT_COARSE_I);
  txcal_radio_regs[7] = BWN_RF_READ(mac,
           R2057_TX1_LOFT_COARSE_Q);
 } else if (phy->rev >= 3) {
  txcal_radio_regs[0] = BWN_RF_READ(mac, 0x2021);
  txcal_radio_regs[1] = BWN_RF_READ(mac, 0x2022);
  txcal_radio_regs[2] = BWN_RF_READ(mac, 0x3021);
  txcal_radio_regs[3] = BWN_RF_READ(mac, 0x3022);
  txcal_radio_regs[4] = BWN_RF_READ(mac, 0x2023);
  txcal_radio_regs[5] = BWN_RF_READ(mac, 0x2024);
  txcal_radio_regs[6] = BWN_RF_READ(mac, 0x3023);
  txcal_radio_regs[7] = BWN_RF_READ(mac, 0x3024);
 } else {
  txcal_radio_regs[0] = BWN_RF_READ(mac, 0x8B);
  txcal_radio_regs[1] = BWN_RF_READ(mac, 0xBA);
  txcal_radio_regs[2] = BWN_RF_READ(mac, 0x8D);
  txcal_radio_regs[3] = BWN_RF_READ(mac, 0xBC);
 }
 iqcal_chanspec->center_freq = bwn_get_centre_freq(mac);
 iqcal_chanspec->channel_type = bwn_get_chan_type(mac, ((void*)0));
 bwn_ntab_read_bulk(mac, BWN_NTAB16(15, 80), 8, table);

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 0);
}
