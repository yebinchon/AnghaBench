
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rf {int rf_idle_tssi; int rf_base_tssi; scalar_t__* rf_txpower_map; } ;
struct bwi_mac {struct bwi_rf mac_rf; } ;
typedef scalar_t__ int8_t ;


 int BWI_TSSI_MAX ;
 int EINVAL ;

int
bwi_rf_tssi2dbm(struct bwi_mac *mac, int8_t tssi, int8_t *txpwr)
{
 struct bwi_rf *rf = &mac->mac_rf;
 int pwr_idx;

 pwr_idx = rf->rf_idle_tssi + (int)tssi - rf->rf_base_tssi;




 if (pwr_idx < 0)
  pwr_idx = 0;
 else if (pwr_idx >= BWI_TSSI_MAX)
  pwr_idx = BWI_TSSI_MAX - 1;


 *txpwr = rf->rf_txpower_map[pwr_idx];
 return 0;
}
