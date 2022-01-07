
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rf {int* rf_nrssi_table; int rf_idle_tssi0; int rf_idle_tssi; int rf_txpower_map; int rf_txpower_map0; scalar_t__ rf_rx_gain; scalar_t__ rf_lo_gain; void** rf_nrssi; scalar_t__ rf_nrssi_slope; int rf_lo_used; int rf_lo; int rf_flags; } ;


 void* BWI_INVALID_NRSSI ;
 int BWI_NRSSI_TBLSZ ;
 int BWI_RF_CLEAR_FLAGS ;
 int bcopy (int ,int ,int) ;
 int bzero (int ,int) ;

void
bwi_rf_clear_state(struct bwi_rf *rf)
{
 int i;

 rf->rf_flags &= ~BWI_RF_CLEAR_FLAGS;
 bzero(rf->rf_lo, sizeof(rf->rf_lo));
 bzero(rf->rf_lo_used, sizeof(rf->rf_lo_used));

 rf->rf_nrssi_slope = 0;
 rf->rf_nrssi[0] = BWI_INVALID_NRSSI;
 rf->rf_nrssi[1] = BWI_INVALID_NRSSI;

 for (i = 0; i < BWI_NRSSI_TBLSZ; ++i)
  rf->rf_nrssi_table[i] = i;

 rf->rf_lo_gain = 0;
 rf->rf_rx_gain = 0;

 bcopy(rf->rf_txpower_map0, rf->rf_txpower_map,
       sizeof(rf->rf_txpower_map));
 rf->rf_idle_tssi = rf->rf_idle_tssi0;
}
