
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct bwn_phy {int rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;
typedef int int16_t ;
struct TYPE_2__ {int gmval; } ;


 scalar_t__ BWN_BAND_2G ;
 int BWN_NTAB32 (int,int) ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int* bwn_nphy_get_tx_gain_table (struct bwn_mac*) ;
 int* bwn_ntab_get_rf_pwr_offset_table (struct bwn_mac*) ;
 int* bwn_ntab_papd_pga_gain_delta_ipa_2g ;
 int bwn_ntab_write (struct bwn_mac*,int ,int) ;
 int bwn_ntab_write_bulk (struct bwn_mac*,int ,int,int const*) ;
 TYPE_1__* nphy ;

__attribute__((used)) static void bwn_nphy_tx_gain_table_upload(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;

 const uint32_t *table = ((void*)0);
 uint32_t rfpwr_offset;
 uint8_t pga_gain, pad_gain;
 int i;
 const int16_t *rf_pwr_offset_table = ((void*)0);

 table = bwn_nphy_get_tx_gain_table(mac);
 if (!table)
  return;

 bwn_ntab_write_bulk(mac, BWN_NTAB32(26, 192), 128, table);
 bwn_ntab_write_bulk(mac, BWN_NTAB32(27, 192), 128, table);

 if (phy->rev < 3)
  return;





 if (phy->rev >= 19) {
  return;
 } else if (phy->rev >= 7) {
  rf_pwr_offset_table = bwn_ntab_get_rf_pwr_offset_table(mac);
  if (!rf_pwr_offset_table)
   return;

  return;
 }

 for (i = 0; i < 128; i++) {
  if (phy->rev >= 19) {

   return;
  } else if (phy->rev >= 7) {
   pga_gain = (table[i] >> 24) & 0xf;
   pad_gain = (table[i] >> 19) & 0x1f;
   if (bwn_current_band(mac) == BWN_BAND_2G)
    rfpwr_offset = rf_pwr_offset_table[pad_gain];
   else
    rfpwr_offset = rf_pwr_offset_table[pga_gain];
  } else {
   pga_gain = (table[i] >> 24) & 0xF;
   if (bwn_current_band(mac) == BWN_BAND_2G)
    rfpwr_offset = bwn_ntab_papd_pga_gain_delta_ipa_2g[pga_gain];
   else
    rfpwr_offset = 0;
  }

  bwn_ntab_write(mac, BWN_NTAB32(26, 576 + i), rfpwr_offset);
  bwn_ntab_write(mac, BWN_NTAB32(27, 576 + i), rfpwr_offset);
 }
}
