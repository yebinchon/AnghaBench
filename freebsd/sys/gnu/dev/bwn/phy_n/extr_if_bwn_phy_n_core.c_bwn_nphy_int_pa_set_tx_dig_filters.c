
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
typedef int int16_t ;


 scalar_t__ BWN_BAND_5G ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_get_chan (struct bwn_mac*) ;
 scalar_t__ bwn_is_40mhz (struct bwn_mac*) ;
 int bwn_nphy_pa_set_tx_dig_filter (struct bwn_mac*,int const,int const*) ;
 int const** tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void bwn_nphy_int_pa_set_tx_dig_filters(struct bwn_mac *mac)
{

 static const uint16_t offset[] = { 0x186, 0x195, 0x2C5 };
 static const int16_t dig_filter_phy_rev16[] = {
  -375, 136, -407, 208, -1527,
  956, 93, 186, 93, 230,
  -44, 230, 201, -191, 201,
 };
 int i;

 for (i = 0; i < 3; i++)
  bwn_nphy_pa_set_tx_dig_filter(mac, offset[i],
           tbl_tx_filter_coef_rev4[i]);


 if (mac->mac_phy.rev == 16)
  bwn_nphy_pa_set_tx_dig_filter(mac, 0x186, dig_filter_phy_rev16);


 if (mac->mac_phy.rev == 17) {
  bwn_nphy_pa_set_tx_dig_filter(mac, 0x186, dig_filter_phy_rev16);
  bwn_nphy_pa_set_tx_dig_filter(mac, 0x195,
           tbl_tx_filter_coef_rev4[1]);
 }

 if (bwn_is_40mhz(mac)) {
  bwn_nphy_pa_set_tx_dig_filter(mac, 0x186,
           tbl_tx_filter_coef_rev4[3]);
 } else {
  if (bwn_current_band(mac) == BWN_BAND_5G)
   bwn_nphy_pa_set_tx_dig_filter(mac, 0x186,
            tbl_tx_filter_coef_rev4[5]);
  if (bwn_get_chan(mac) == 14)
   bwn_nphy_pa_set_tx_dig_filter(mac, 0x186,
            tbl_tx_filter_coef_rev4[6]);
 }
}
