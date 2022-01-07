
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iwm_phy_db_chg_txp {int max_channel_idx; } ;
struct iwm_phy_db {int n_group_txp; TYPE_1__* calib_ch_group_txp; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ch_id_to_ch_index (int) ;
 int le16toh (int ) ;

__attribute__((used)) static uint16_t
channel_id_to_txp(struct iwm_phy_db *phy_db, uint16_t ch_id)
{
 struct iwm_phy_db_chg_txp *txp_chg;
 int i;
 uint8_t ch_index = ch_id_to_ch_index(ch_id);
 if (ch_index == 0xff)
  return 0xff;

 for (i = 0; i < phy_db->n_group_txp; i++) {
  txp_chg = (void *)phy_db->calib_ch_group_txp[i].data;
  if (!txp_chg)
   return 0xff;




  if (le16toh(txp_chg->max_channel_idx) >= ch_index)
   return i;
 }
 return 0xff;
}
