
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_nphy_pa_set_tx_dig_filter (struct bwn_mac*,int,int ) ;
 int * tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void bwn_nphy_ext_pa_set_tx_dig_filters(struct bwn_mac *mac)
{
 bwn_nphy_pa_set_tx_dig_filter(mac, 0x2C5,
          tbl_tx_filter_coef_rev4[2]);
}
