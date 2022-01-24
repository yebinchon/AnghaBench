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
struct elink_vars {int /*<<< orphan*/  ieee_fc; int /*<<< orphan*/  phy_flags; } ;
struct elink_phy {scalar_t__ req_line_speed; scalar_t__ speed_cap_mask; scalar_t__ type; } ;
struct elink_params {int dummy; } ;
typedef  scalar_t__ elink_status_t ;

/* Variables and functions */
 scalar_t__ ELINK_SPEED_10 ; 
 scalar_t__ ELINK_SPEED_100 ; 
 scalar_t__ ELINK_STATUS_OK ; 
 int /*<<< orphan*/  PHY_SGMII_FLAG ; 
 int /*<<< orphan*/  PHY_XGXS_FLAG ; 
 scalar_t__ PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD ; 
 scalar_t__ PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL ; 
 scalar_t__ PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct elink_params*,struct elink_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params*,struct elink_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_params*,struct elink_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*,struct elink_phy*) ; 

__attribute__((used)) static elink_status_t FUNC5(struct elink_phy *phy,
			  struct elink_params *params,
			  struct elink_vars *vars)
{
	elink_status_t rc;
	vars->phy_flags |= PHY_XGXS_FLAG;
	if ((phy->req_line_speed &&
	     ((phy->req_line_speed == ELINK_SPEED_100) ||
	      (phy->req_line_speed == ELINK_SPEED_10))) ||
	    (!phy->req_line_speed &&
	     (phy->speed_cap_mask >=
	      PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL) &&
	     (phy->speed_cap_mask <
	      PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) ||
	    (phy->type == PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD))
		vars->phy_flags |= PHY_SGMII_FLAG;
	else
		vars->phy_flags &= ~PHY_SGMII_FLAG;

	FUNC0(phy, params, &vars->ieee_fc);
	FUNC2(params, phy);
	if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT)
		FUNC3(params, phy);

	rc = FUNC1(params, phy, 0);
	/* Reset the SerDes and wait for reset bit return low */
	if (rc != ELINK_STATUS_OK)
		return rc;

	FUNC2(params, phy);
	/* Setting the masterLn_def again after the reset */
	if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT) {
		FUNC3(params, phy);
		FUNC4(params, phy);
	}

	return rc;
}