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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,scalar_t__) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,scalar_t__) ; 

__attribute__((used)) static s32 FUNC10(struct ixgbe_hw *hw, u8 byte_offset,
					    u8 dev_addr, u8 data, bool lock)
{
	s32 status;
	u32 max_retry = 1;
	u32 retry = 0;
	u32 swfw_mask = hw->phy.phy_semaphore_mask;

	FUNC0("ixgbe_write_i2c_byte_generic");

	if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask) !=
	    IXGBE_SUCCESS)
		return IXGBE_ERR_SWFW_SYNC;

	do {
		FUNC5(hw);

		status = FUNC2(hw, dev_addr);
		if (status != IXGBE_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != IXGBE_SUCCESS)
			goto fail;

		status = FUNC2(hw, byte_offset);
		if (status != IXGBE_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != IXGBE_SUCCESS)
			goto fail;

		status = FUNC2(hw, data);
		if (status != IXGBE_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != IXGBE_SUCCESS)
			goto fail;

		FUNC6(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		return IXGBE_SUCCESS;

fail:
		FUNC4(hw);
		retry++;
		if (retry < max_retry)
			FUNC1("I2C byte write error - Retrying.\n");
		else
			FUNC1("I2C byte write error.\n");
	} while (retry < max_retry);

	if (lock)
		hw->mac.ops.release_swfw_sync(hw, swfw_mask);

	return status;
}