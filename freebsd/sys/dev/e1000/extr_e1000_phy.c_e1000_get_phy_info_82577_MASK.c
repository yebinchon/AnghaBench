#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int*) ;scalar_t__ (* get_cable_length ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int is_mdix; void* remote_rx; void* local_rx; int /*<<< orphan*/  cable_length; TYPE_1__ ops; int /*<<< orphan*/  polarity_correction; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CABLE_LENGTH_UNDEFINED ; 
 scalar_t__ E1000_ERR_CONFIG ; 
 scalar_t__ E1000_SUCCESS ; 
 int I82577_PHY_STATUS2_MDIX ; 
 int I82577_PHY_STATUS2_SPEED_1000MBPS ; 
 int I82577_PHY_STATUS2_SPEED_MASK ; 
 int /*<<< orphan*/  I82577_PHY_STATUS_2 ; 
 int /*<<< orphan*/  PHY_1000T_STATUS ; 
 int SR_1000T_LOCAL_RX_STATUS ; 
 int SR_1000T_REMOTE_RX_STATUS ; 
 int /*<<< orphan*/  TRUE ; 
 void* e1000_1000t_rx_status_not_ok ; 
 void* e1000_1000t_rx_status_ok ; 
 void* e1000_1000t_rx_status_undefined ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 

s32 FUNC7(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 data;
	bool link;

	FUNC0("e1000_get_phy_info_82577");

	ret_val = FUNC3(hw, 1, 0, &link);
	if (ret_val)
		return ret_val;

	if (!link) {
		FUNC1("Phy info is only valid if link is up\n");
		return -E1000_ERR_CONFIG;
	}

	phy->polarity_correction = TRUE;

	ret_val = FUNC2(hw);
	if (ret_val)
		return ret_val;

	ret_val = phy->ops.read_reg(hw, I82577_PHY_STATUS_2, &data);
	if (ret_val)
		return ret_val;

	phy->is_mdix = !!(data & I82577_PHY_STATUS2_MDIX);

	if ((data & I82577_PHY_STATUS2_SPEED_MASK) ==
	    I82577_PHY_STATUS2_SPEED_1000MBPS) {
		ret_val = hw->phy.ops.get_cable_length(hw);
		if (ret_val)
			return ret_val;

		ret_val = phy->ops.read_reg(hw, PHY_1000T_STATUS, &data);
		if (ret_val)
			return ret_val;

		phy->local_rx = (data & SR_1000T_LOCAL_RX_STATUS)
				? e1000_1000t_rx_status_ok
				: e1000_1000t_rx_status_not_ok;

		phy->remote_rx = (data & SR_1000T_REMOTE_RX_STATUS)
				 ? e1000_1000t_rx_status_ok
				 : e1000_1000t_rx_status_not_ok;
	} else {
		phy->cable_length = E1000_CABLE_LENGTH_UNDEFINED;
		phy->local_rx = e1000_1000t_rx_status_undefined;
		phy->remote_rx = e1000_1000t_rx_status_undefined;
	}

	return E1000_SUCCESS;
}