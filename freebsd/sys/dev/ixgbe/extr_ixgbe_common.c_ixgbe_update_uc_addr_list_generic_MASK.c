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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ overflow_promisc; scalar_t__ rar_used_count; int /*<<< orphan*/  user_set_promisc; } ;
struct ixgbe_hw {TYPE_1__ addr_ctrl; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/ * (* ixgbe_mc_addr_itr ) (struct ixgbe_hw*,int /*<<< orphan*/ **,scalar_t__*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 scalar_t__ IXGBE_FCTRL_UPE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ *,scalar_t__) ; 

s32 FUNC8(struct ixgbe_hw *hw, u8 *addr_list,
				      u32 addr_count, ixgbe_mc_addr_itr next)
{
	u8 *addr;
	u32 i;
	u32 old_promisc_setting = hw->addr_ctrl.overflow_promisc;
	u32 uc_addr_in_use;
	u32 fctrl;
	u32 vmdq;

	FUNC0("ixgbe_update_uc_addr_list_generic");

	/*
	 * Clear accounting of old secondary address list,
	 * don't count RAR[0]
	 */
	uc_addr_in_use = hw->addr_ctrl.rar_used_count - 1;
	hw->addr_ctrl.rar_used_count -= uc_addr_in_use;
	hw->addr_ctrl.overflow_promisc = 0;

	/* Zero out the other receive addresses */
	FUNC2("Clearing RAR[1-%d]\n", uc_addr_in_use+1);
	for (i = 0; i < uc_addr_in_use; i++) {
		FUNC6(hw, FUNC4(1+i), 0);
		FUNC6(hw, FUNC3(1+i), 0);
	}

	/* Add the new addresses */
	for (i = 0; i < addr_count; i++) {
		FUNC1(" Adding the secondary addresses:\n");
		addr = next(hw, &addr_list, &vmdq);
		FUNC7(hw, addr, vmdq);
	}

	if (hw->addr_ctrl.overflow_promisc) {
		/* enable promisc if not already in overflow or set by user */
		if (!old_promisc_setting && !hw->addr_ctrl.user_set_promisc) {
			FUNC1(" Entering address overflow promisc mode\n");
			fctrl = FUNC5(hw, IXGBE_FCTRL);
			fctrl |= IXGBE_FCTRL_UPE;
			FUNC6(hw, IXGBE_FCTRL, fctrl);
		}
	} else {
		/* only disable if set by overflow, not by user */
		if (old_promisc_setting && !hw->addr_ctrl.user_set_promisc) {
			FUNC1(" Leaving address overflow promisc mode\n");
			fctrl = FUNC5(hw, IXGBE_FCTRL);
			fctrl &= ~IXGBE_FCTRL_UPE;
			FUNC6(hw, IXGBE_FCTRL, fctrl);
		}
	}

	FUNC1("ixgbe_update_uc_addr_list_generic Complete\n");
	return IXGBE_SUCCESS;
}