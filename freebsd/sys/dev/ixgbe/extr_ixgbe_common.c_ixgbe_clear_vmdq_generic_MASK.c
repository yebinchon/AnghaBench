#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  (* clear_rar ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; scalar_t__ san_mac_rar_index; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; int /*<<< orphan*/  hw_addr; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ IXGBE_CLEAR_VMDQ_ALL ; 
 int /*<<< orphan*/  IXGBE_ERROR_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,scalar_t__) ; 

s32 FUNC8(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
	u32 mpsar_lo, mpsar_hi;
	u32 rar_entries = hw->mac.num_rar_entries;

	FUNC0("ixgbe_clear_vmdq_generic");

	/* Make sure we are using a valid rar index range */
	if (rar >= rar_entries) {
		FUNC1(IXGBE_ERROR_ARGUMENT,
			     "RAR index %d is out of range.\n", rar);
		return IXGBE_ERR_INVALID_ARGUMENT;
	}

	mpsar_lo = FUNC4(hw, FUNC3(rar));
	mpsar_hi = FUNC4(hw, FUNC2(rar));

	if (FUNC5(hw->hw_addr))
		goto done;

	if (!mpsar_lo && !mpsar_hi)
		goto done;

	if (vmdq == IXGBE_CLEAR_VMDQ_ALL) {
		if (mpsar_lo) {
			FUNC6(hw, FUNC3(rar), 0);
			mpsar_lo = 0;
		}
		if (mpsar_hi) {
			FUNC6(hw, FUNC2(rar), 0);
			mpsar_hi = 0;
		}
	} else if (vmdq < 32) {
		mpsar_lo &= ~(1 << vmdq);
		FUNC6(hw, FUNC3(rar), mpsar_lo);
	} else {
		mpsar_hi &= ~(1 << (vmdq - 32));
		FUNC6(hw, FUNC2(rar), mpsar_hi);
	}

	/* was that the last pool using this rar? */
	if (mpsar_lo == 0 && mpsar_hi == 0 &&
	    rar != 0 && rar != hw->mac.san_mac_rar_index)
		hw->mac.ops.clear_rar(hw, rar);
done:
	return IXGBE_SUCCESS;
}