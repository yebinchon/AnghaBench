
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct iwm_phy_db_entry {int dummy; } ;
struct iwm_phy_db {size_t n_group_papd; size_t n_group_txp; struct iwm_phy_db_entry* calib_ch_group_txp; struct iwm_phy_db_entry* calib_ch_group_papd; struct iwm_phy_db_entry calib_nch; struct iwm_phy_db_entry cfg; } ;
typedef enum iwm_phy_db_section_type { ____Placeholder_iwm_phy_db_section_type } iwm_phy_db_section_type ;






 int IWM_PHY_DB_MAX ;

__attribute__((used)) static struct iwm_phy_db_entry *
iwm_phy_db_get_section(struct iwm_phy_db *phy_db,
         enum iwm_phy_db_section_type type,
         uint16_t chg_id)
{
 if (!phy_db || type >= IWM_PHY_DB_MAX)
  return ((void*)0);

 switch (type) {
 case 128:
  return &phy_db->cfg;
 case 129:
  return &phy_db->calib_nch;
 case 131:
  if (chg_id >= phy_db->n_group_papd)
   return ((void*)0);
  return &phy_db->calib_ch_group_papd[chg_id];
 case 130:
  if (chg_id >= phy_db->n_group_txp)
   return ((void*)0);
  return &phy_db->calib_ch_group_txp[chg_id];
 default:
  return ((void*)0);
 }
 return ((void*)0);
}
