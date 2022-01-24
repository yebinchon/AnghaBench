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
typedef  int /*<<< orphan*/  uint16_t ;
struct bwi_phy {scalar_t__ phy_tbl_ctrl; scalar_t__ phy_tbl_data_lo; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwi_mac *mac, uint16_t ofs, uint16_t data)
{
	struct bwi_phy *phy = &mac->mac_phy;

	FUNC0(phy->phy_tbl_ctrl != 0 && phy->phy_tbl_data_lo != 0,
	   ("phy_tbl_ctrl %d phy_tbl_data_lo %d",
	     phy->phy_tbl_ctrl, phy->phy_tbl_data_lo));
	FUNC1(mac, phy->phy_tbl_ctrl, ofs);
	FUNC1(mac, phy->phy_tbl_data_lo, data);
}