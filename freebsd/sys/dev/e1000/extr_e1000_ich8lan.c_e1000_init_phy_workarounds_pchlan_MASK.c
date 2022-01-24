#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int type; } ;
struct TYPE_8__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  ulp_state; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_2__ dev_spec; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_FORCE_SMBUS ; 
 scalar_t__ E1000_ERR_PHY ; 
 int /*<<< orphan*/  E1000_FWSM ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
#define  e1000_pch2lan 132 
#define  e1000_pch_cnp 131 
#define  e1000_pch_lpt 130 
#define  e1000_pch_spt 129 
#define  e1000_pchlan 128 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  e1000_ulp_state_unknown ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 scalar_t__ FUNC12 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*) ; 
 scalar_t__ FUNC15 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC16(struct e1000_hw *hw)
{
	u32 mac_reg, fwsm = FUNC2(hw, E1000_FWSM);
	s32 ret_val;

	FUNC0("e1000_init_phy_workarounds_pchlan");

	/* Gate automatic PHY configuration by hardware on managed and
	 * non-managed 82579 and newer adapters.
	 */
	FUNC6(hw, TRUE);

	/* It is not possible to be certain of the current state of ULP
	 * so forcibly disable it.
	 */
	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
	FUNC5(hw, TRUE);

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val) {
		FUNC1("Failed to initialize PHY flow\n");
		goto out;
	}

	/* The MAC-PHY interconnect may be in SMBus mode.  If the PHY is
	 * inaccessible and resetting the PHY is not blocked, toggle the
	 * LANPHYPC Value bit to force the interconnect to PCIe mode.
	 */
	switch (hw->mac.type) {
	case e1000_pch_lpt:
	case e1000_pch_spt:
	case e1000_pch_cnp:
		if (FUNC8(hw))
			break;

		/* Before toggling LANPHYPC, see if PHY is accessible by
		 * forcing MAC to SMBus mode first.
		 */
		mac_reg = FUNC2(hw, E1000_CTRL_EXT);
		mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
		FUNC3(hw, E1000_CTRL_EXT, mac_reg);

		/* Wait 50 milliseconds for MAC to finish any retries
		 * that it might be trying to perform from previous
		 * attempts to acknowledge any phy read requests.
		 */
		 FUNC10(50);

		/* fall-through */
	case e1000_pch2lan:
		if (FUNC8(hw))
			break;

		/* fall-through */
	case e1000_pchlan:
		if ((hw->mac.type == e1000_pchlan) &&
		    (fwsm & E1000_ICH_FWSM_FW_VALID))
			break;

		if (hw->phy.ops.check_reset_block(hw)) {
			FUNC1("Required LANPHYPC toggle blocked by ME\n");
			ret_val = -E1000_ERR_PHY;
			break;
		}

		/* Toggle LANPHYPC Value bit */
		FUNC9(hw);
		if (hw->mac.type >= e1000_pch_lpt) {
			if (FUNC8(hw))
				break;

			/* Toggling LANPHYPC brings the PHY out of SMBus mode
			 * so ensure that the MAC is also out of SMBus mode
			 */
			mac_reg = FUNC2(hw, E1000_CTRL_EXT);
			mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
			FUNC3(hw, E1000_CTRL_EXT, mac_reg);

			if (FUNC8(hw))
				break;

			ret_val = -E1000_ERR_PHY;
		}
		break;
	default:
		break;
	}

	hw->phy.ops.release(hw);
	if (!ret_val) {

		/* Check to see if able to reset PHY.  Print error if not */
		if (hw->phy.ops.check_reset_block(hw)) {
			FUNC4("Reset blocked by ME\n");
			goto out;
		}

		/* Reset the PHY before any access to it.  Doing so, ensures
		 * that the PHY is in a known good state before we read/write
		 * PHY registers.  The generic reset is sufficient here,
		 * because we haven't determined the PHY type yet.
		 */
		ret_val = FUNC7(hw);
		if (ret_val)
			goto out;

		/* On a successful reset, possibly need to wait for the PHY
		 * to quiesce to an accessible state before returning control
		 * to the calling function.  If the PHY does not quiesce, then
		 * return E1000E_BLK_PHY_RESET, as this is the condition that
		 *  the PHY is in.
		 */
		ret_val = hw->phy.ops.check_reset_block(hw);
		if (ret_val)
			FUNC4("ME blocked access to PHY after reset\n");
	}

out:
	/* Ungate automatic PHY configuration on non-managed 82579 */
	if ((hw->mac.type == e1000_pch2lan) &&
	    !(fwsm & E1000_ICH_FWSM_FW_VALID)) {
		FUNC10(10);
		FUNC6(hw, FALSE);
	}

	return ret_val;
}