#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; int /*<<< orphan*/  id; TYPE_2__ ops; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_82580_PHY_POWER_MGMT ; 
 int E1000_82580_PM_GO_LINKD ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 scalar_t__ E1000_ERR_PHY ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
#define  I210_I_PHY_ID 141 
#define  I347AT4_E_PHY_ID 140 
#define  M88E1112_E_PHY_ID 139 
#define  M88E1340M_E_PHY_ID 138 
#define  M88E1512_E_PHY_ID 137 
#define  M88E1543_E_PHY_ID 136 
#define  e1000_82580 135 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
#define  e1000_i210 134 
#define  e1000_i211 133 
#define  e1000_i350 132 
#define  e1000_phy_82580 131 
#define  e1000_phy_i210 130 
#define  e1000_phy_igp_3 129 
#define  e1000_phy_m88 128 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC13(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u32 phpm_reg;

	FUNC0("e1000_setup_copper_link_82575");

	ctrl = FUNC2(hw, E1000_CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC3(hw, E1000_CTRL, ctrl);

	/* Clear Go Link Disconnect bit on supported devices */
	switch (hw->mac.type) {
	case e1000_82580:
	case e1000_i350:
	case e1000_i210:
	case e1000_i211:
		phpm_reg = FUNC2(hw, E1000_82580_PHY_POWER_MGMT);
		phpm_reg &= ~E1000_82580_PM_GO_LINKD;
		FUNC3(hw, E1000_82580_PHY_POWER_MGMT, phpm_reg);
		break;
	default:
		break;
	}

	ret_val = FUNC9(hw);
	if (ret_val)
		goto out;

	if (FUNC10(hw)) {
		/* allow time for SFP cage time to power up phy */
		FUNC11(300);

		ret_val = hw->phy.ops.reset(hw);
		if (ret_val) {
			FUNC1("Error resetting the PHY.\n");
			goto out;
		}
	}
	switch (hw->phy.type) {
	case e1000_phy_i210:
	case e1000_phy_m88:
		switch (hw->phy.id) {
		case I347AT4_E_PHY_ID:
		case M88E1112_E_PHY_ID:
		case M88E1340M_E_PHY_ID:
		case M88E1543_E_PHY_ID:
		case M88E1512_E_PHY_ID:
		case I210_I_PHY_ID:
			ret_val = FUNC7(hw);
			break;
		default:
			ret_val = FUNC6(hw);
			break;
		}
		break;
	case e1000_phy_igp_3:
		ret_val = FUNC5(hw);
		break;
	case e1000_phy_82580:
		ret_val = FUNC4(hw);
		break;
	default:
		ret_val = -E1000_ERR_PHY;
		break;
	}

	if (ret_val)
		goto out;

	ret_val = FUNC8(hw);
out:
	return ret_val;
}