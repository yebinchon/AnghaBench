#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwm_phy_db {int n_group_papd; int n_group_txp; struct iwm_phy_db* calib_ch_group_txp; struct iwm_phy_db* calib_ch_group_papd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_PHY_DB_CALIB_CHG_PAPD ; 
 int /*<<< orphan*/  IWM_PHY_DB_CALIB_CHG_TXP ; 
 int /*<<< orphan*/  IWM_PHY_DB_CALIB_NCH ; 
 int /*<<< orphan*/  IWM_PHY_DB_CFG ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_phy_db*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_phy_db*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct iwm_phy_db *phy_db)
{
	int i;

	if (!phy_db)
		return;

	FUNC1(phy_db, IWM_PHY_DB_CFG, 0);
	FUNC1(phy_db, IWM_PHY_DB_CALIB_NCH, 0);

	for (i = 0; i < phy_db->n_group_papd; i++)
		FUNC1(phy_db, IWM_PHY_DB_CALIB_CHG_PAPD, i);
	if (phy_db->calib_ch_group_papd != NULL)
		FUNC0(phy_db->calib_ch_group_papd, M_DEVBUF);

	for (i = 0; i < phy_db->n_group_txp; i++)
		FUNC1(phy_db, IWM_PHY_DB_CALIB_CHG_TXP, i);
	if (phy_db->calib_ch_group_txp != NULL)
		FUNC0(phy_db->calib_ch_group_txp, M_DEVBUF);

	FUNC0(phy_db, M_DEVBUF);
}