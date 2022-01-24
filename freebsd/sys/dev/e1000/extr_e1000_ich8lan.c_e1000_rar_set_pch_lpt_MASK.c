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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int E1000_ERR_CONFIG ; 
 int /*<<< orphan*/  E1000_FWSM ; 
 int E1000_FWSM_WLOCK_MAC_MASK ; 
 int E1000_FWSM_WLOCK_MAC_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int E1000_RAH_AV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 

__attribute__((used)) static int FUNC11(struct e1000_hw *hw, u8 *addr, u32 index)
{
	u32 rar_low, rar_high;
	u32 wlock_mac;

	FUNC0("e1000_rar_set_pch_lpt");

	/* HW expects these in little endian so we reverse the byte order
	 * from network order (big endian) to little endian
	 */
	rar_low = ((u32) addr[0] | ((u32) addr[1] << 8) |
		   ((u32) addr[2] << 16) | ((u32) addr[3] << 24));

	rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));

	/* If MAC address zero, no need to set the AV bit */
	if (rar_low || rar_high)
		rar_high |= E1000_RAH_AV;

	if (index == 0) {
		FUNC8(hw, FUNC3(index), rar_low);
		FUNC7(hw);
		FUNC8(hw, FUNC2(index), rar_high);
		FUNC7(hw);
		return E1000_SUCCESS;
	}

	/* The manageability engine (ME) can lock certain SHRAR registers that
	 * it is using - those registers are unavailable for use.
	 */
	if (index < hw->mac.rar_entry_count) {
		wlock_mac = FUNC4(hw, E1000_FWSM) &
			    E1000_FWSM_WLOCK_MAC_MASK;
		wlock_mac >>= E1000_FWSM_WLOCK_MAC_SHIFT;

		/* Check if all SHRAR registers are locked */
		if (wlock_mac == 1)
			goto out;

		if ((wlock_mac == 0) || (index <= wlock_mac)) {
			s32 ret_val;

			ret_val = FUNC9(hw);

			if (ret_val)
				goto out;

			FUNC8(hw, FUNC6(index - 1),
					rar_low);
			FUNC7(hw);
			FUNC8(hw, FUNC5(index - 1),
					rar_high);
			FUNC7(hw);

			FUNC10(hw);

			/* verify the register updates */
			if ((FUNC4(hw, FUNC6(index - 1)) == rar_low) &&
			    (FUNC4(hw, FUNC5(index - 1)) == rar_high))
				return E1000_SUCCESS;
		}
	}

out:
	FUNC1("Failed to write receive address at index %d\n", index);
	return -E1000_ERR_CONFIG;
}