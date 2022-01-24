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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_device_caps ) (struct ixgbe_hw*,int*) ;int /*<<< orphan*/  (* clear_hw_cntrs ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; TYPE_2__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  media_type; } ;
struct ixgbe_hw {void* adapter_stopped; void* need_crosstalk_fix; TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 void* FALSE ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT_NS_DIS ; 
 int IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR ; 
 scalar_t__ IXGBE_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
#define  ixgbe_mac_82599EB 130 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int*) ; 

s32 FUNC10(struct ixgbe_hw *hw)
{
	s32 ret_val;
	u32 ctrl_ext;
	u16 device_caps;

	FUNC0("ixgbe_start_hw_generic");

	/* Set the media type */
	hw->phy.media_type = hw->mac.ops.get_media_type(hw);

	/* PHY ops initialization must be done in reset_hw() */

	/* Clear the VLAN filter table */
	hw->mac.ops.clear_vfta(hw);

	/* Clear statistics registers */
	hw->mac.ops.clear_hw_cntrs(hw);

	/* Set No Snoop Disable */
	ctrl_ext = FUNC2(hw, IXGBE_CTRL_EXT);
	ctrl_ext |= IXGBE_CTRL_EXT_NS_DIS;
	FUNC4(hw, IXGBE_CTRL_EXT, ctrl_ext);
	FUNC3(hw);

	/* Setup flow control */
	ret_val = FUNC5(hw);
	if (ret_val != IXGBE_SUCCESS && ret_val != IXGBE_NOT_IMPLEMENTED) {
		FUNC1("Flow control setup failed, returning %d\n", ret_val);
		return ret_val;
	}

	/* Cache bit indicating need for crosstalk fix */
	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		hw->mac.ops.get_device_caps(hw, &device_caps);
		if (device_caps & IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR)
			hw->need_crosstalk_fix = FALSE;
		else
			hw->need_crosstalk_fix = TRUE;
		break;
	default:
		hw->need_crosstalk_fix = FALSE;
		break;
	}

	/* Clear adapter stopped flag */
	hw->adapter_stopped = FALSE;

	return IXGBE_SUCCESS;
}