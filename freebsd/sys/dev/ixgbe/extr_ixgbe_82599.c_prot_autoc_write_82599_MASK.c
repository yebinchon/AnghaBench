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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_AUTOC ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_MAC_CSR_SM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC6(struct ixgbe_hw *hw, u32 autoc, bool locked)
{
	s32 ret_val = IXGBE_SUCCESS;

	/* Blocked by MNG FW so bail */
	if (FUNC1(hw))
		goto out;

	/* We only need to get the lock if:
	 *  - We didn't do it already (in the read part of a read-modify-write)
	 *  - LESM is enabled.
	 */
	if (!locked && FUNC3(hw)) {
		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
					IXGBE_GSSR_MAC_CSR_SM);
		if (ret_val != IXGBE_SUCCESS)
			return IXGBE_ERR_SWFW_SYNC;

		locked = TRUE;
	}

	FUNC0(hw, IXGBE_AUTOC, autoc);
	ret_val = FUNC2(hw);

out:
	/* Free the SW/FW semaphore as we either grabbed it here or
	 * already had it when this function was called.
	 */
	if (locked)
		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);

	return ret_val;
}