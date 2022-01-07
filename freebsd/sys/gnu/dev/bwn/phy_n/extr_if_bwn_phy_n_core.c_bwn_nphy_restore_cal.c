
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct bwn_phy_n_iq_comp {int dummy; } ;
struct TYPE_6__ {struct bwn_phy_n_iq_comp rxcal_coeffs_5G; scalar_t__* txcal_radio_regs_5G; struct bwn_phy_n_iq_comp rxcal_coeffs_2G; scalar_t__* txcal_radio_regs_2G; scalar_t__* txcal_coeffs_5G; scalar_t__* txcal_coeffs_2G; } ;
struct TYPE_5__ {int center_freq; } ;
struct TYPE_4__ {int center_freq; } ;
struct bwn_phy_n {TYPE_3__ cal_cache; TYPE_2__ iqcal_chanspec_5G; TYPE_1__ iqcal_chanspec_2G; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 scalar_t__ BWN_BAND_2G ;
 int BWN_NTAB16 (int,int) ;
 int BWN_RF_WRITE (struct bwn_mac*,int,scalar_t__) ;
 int R2057_TX0_LOFT_COARSE_I ;
 int R2057_TX0_LOFT_COARSE_Q ;
 int R2057_TX0_LOFT_FINE_I ;
 int R2057_TX0_LOFT_FINE_Q ;
 int R2057_TX1_LOFT_COARSE_I ;
 int R2057_TX1_LOFT_COARSE_Q ;
 int R2057_TX1_LOFT_FINE_I ;
 int R2057_TX1_LOFT_FINE_Q ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_nphy_rx_iq_coeffs (struct bwn_mac*,int,struct bwn_phy_n_iq_comp*) ;
 int bwn_nphy_tx_iq_workaround (struct bwn_mac*) ;
 int bwn_ntab_write_bulk (struct bwn_mac*,int ,int,scalar_t__*) ;

__attribute__((used)) static void bwn_nphy_restore_cal(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

 uint16_t coef[4];
 uint16_t *loft = ((void*)0);
 uint16_t *table = ((void*)0);

 int i;
 uint16_t *txcal_radio_regs = ((void*)0);
 struct bwn_phy_n_iq_comp *rxcal_coeffs = ((void*)0);

 if (bwn_current_band(mac) == BWN_BAND_2G) {
  if (!nphy->iqcal_chanspec_2G.center_freq)
   return;
  table = nphy->cal_cache.txcal_coeffs_2G;
  loft = &nphy->cal_cache.txcal_coeffs_2G[5];
 } else {
  if (!nphy->iqcal_chanspec_5G.center_freq)
   return;
  table = nphy->cal_cache.txcal_coeffs_5G;
  loft = &nphy->cal_cache.txcal_coeffs_5G[5];
 }

 bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 80), 4, table);

 for (i = 0; i < 4; i++) {
  if (mac->mac_phy.rev >= 3)
   table[i] = coef[i];
  else
   coef[i] = 0;
 }

 bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 88), 4, coef);
 bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 85), 2, loft);
 bwn_ntab_write_bulk(mac, BWN_NTAB16(15, 93), 2, loft);

 if (mac->mac_phy.rev < 2)
  bwn_nphy_tx_iq_workaround(mac);

 if (bwn_current_band(mac) == BWN_BAND_2G) {
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
 } else {
  txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
  rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
 }


 if (phy->rev >= 19) {

 } else if (phy->rev >= 7) {
  BWN_RF_WRITE(mac, R2057_TX0_LOFT_FINE_I,
    txcal_radio_regs[0]);
  BWN_RF_WRITE(mac, R2057_TX0_LOFT_FINE_Q,
    txcal_radio_regs[1]);
  BWN_RF_WRITE(mac, R2057_TX0_LOFT_COARSE_I,
    txcal_radio_regs[4]);
  BWN_RF_WRITE(mac, R2057_TX0_LOFT_COARSE_Q,
    txcal_radio_regs[5]);
  BWN_RF_WRITE(mac, R2057_TX1_LOFT_FINE_I,
    txcal_radio_regs[2]);
  BWN_RF_WRITE(mac, R2057_TX1_LOFT_FINE_Q,
    txcal_radio_regs[3]);
  BWN_RF_WRITE(mac, R2057_TX1_LOFT_COARSE_I,
    txcal_radio_regs[6]);
  BWN_RF_WRITE(mac, R2057_TX1_LOFT_COARSE_Q,
    txcal_radio_regs[7]);
 } else if (phy->rev >= 3) {
  BWN_RF_WRITE(mac, 0x2021, txcal_radio_regs[0]);
  BWN_RF_WRITE(mac, 0x2022, txcal_radio_regs[1]);
  BWN_RF_WRITE(mac, 0x3021, txcal_radio_regs[2]);
  BWN_RF_WRITE(mac, 0x3022, txcal_radio_regs[3]);
  BWN_RF_WRITE(mac, 0x2023, txcal_radio_regs[4]);
  BWN_RF_WRITE(mac, 0x2024, txcal_radio_regs[5]);
  BWN_RF_WRITE(mac, 0x3023, txcal_radio_regs[6]);
  BWN_RF_WRITE(mac, 0x3024, txcal_radio_regs[7]);
 } else {
  BWN_RF_WRITE(mac, 0x8B, txcal_radio_regs[0]);
  BWN_RF_WRITE(mac, 0xBA, txcal_radio_regs[1]);
  BWN_RF_WRITE(mac, 0x8D, txcal_radio_regs[2]);
  BWN_RF_WRITE(mac, 0xBC, txcal_radio_regs[3]);
 }
 bwn_nphy_rx_iq_coeffs(mac, 1, rxcal_coeffs);
}
