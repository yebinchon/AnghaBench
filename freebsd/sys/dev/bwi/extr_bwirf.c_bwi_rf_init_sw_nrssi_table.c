
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rf {int* rf_nrssi; int rf_nrssi_slope; int* rf_nrssi_table; } ;
struct bwi_mac {struct bwi_rf mac_rf; } ;


 int BWI_NRSSI_TBLSZ ;

__attribute__((used)) static void
bwi_rf_init_sw_nrssi_table(struct bwi_mac *mac)
{
 struct bwi_rf *rf = &mac->mac_rf;
 int d, i;

 d = 0x1f - rf->rf_nrssi[0];
 for (i = 0; i < BWI_NRSSI_TBLSZ; ++i) {
  int val;

  val = (((i - d) * rf->rf_nrssi_slope) / 0x10000) + 0x3a;
  if (val < 0)
   val = 0;
  else if (val > 0x3f)
   val = 0x3f;

  rf->rf_nrssi_table[i] = val;
 }
}
