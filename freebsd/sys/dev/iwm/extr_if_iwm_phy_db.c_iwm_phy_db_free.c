
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_phy_db {int n_group_papd; int n_group_txp; struct iwm_phy_db* calib_ch_group_txp; struct iwm_phy_db* calib_ch_group_papd; } ;


 int IWM_PHY_DB_CALIB_CHG_PAPD ;
 int IWM_PHY_DB_CALIB_CHG_TXP ;
 int IWM_PHY_DB_CALIB_NCH ;
 int IWM_PHY_DB_CFG ;
 int M_DEVBUF ;
 int free (struct iwm_phy_db*,int ) ;
 int iwm_phy_db_free_section (struct iwm_phy_db*,int ,int) ;

void
iwm_phy_db_free(struct iwm_phy_db *phy_db)
{
 int i;

 if (!phy_db)
  return;

 iwm_phy_db_free_section(phy_db, IWM_PHY_DB_CFG, 0);
 iwm_phy_db_free_section(phy_db, IWM_PHY_DB_CALIB_NCH, 0);

 for (i = 0; i < phy_db->n_group_papd; i++)
  iwm_phy_db_free_section(phy_db, IWM_PHY_DB_CALIB_CHG_PAPD, i);
 if (phy_db->calib_ch_group_papd != ((void*)0))
  free(phy_db->calib_ch_group_papd, M_DEVBUF);

 for (i = 0; i < phy_db->n_group_txp; i++)
  iwm_phy_db_free_section(phy_db, IWM_PHY_DB_CALIB_CHG_TXP, i);
 if (phy_db->calib_ch_group_txp != ((void*)0))
  free(phy_db->calib_ch_group_txp, M_DEVBUF);

 free(phy_db, M_DEVBUF);
}
