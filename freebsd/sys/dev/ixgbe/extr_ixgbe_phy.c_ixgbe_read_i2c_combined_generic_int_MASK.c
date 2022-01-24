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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int*) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC12(struct ixgbe_hw *hw, u8 addr, u16 reg,
					u16 *val, bool lock)
{
	u32 swfw_mask = hw->phy.phy_semaphore_mask;
	int max_retry = 3;
	int retry = 0;
	u8 csum_byte;
	u8 high_bits;
	u8 low_bits;
	u8 reg_high;
	u8 csum;

	reg_high = ((reg >> 7) & 0xFE) | 1;	/* Indicate read combined */
	csum = FUNC7(reg_high, reg & 0xFF);
	csum = ~csum;
	do {
		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
			return IXGBE_ERR_SWFW_SYNC;
		FUNC4(hw);
		/* Device Address and write indication */
		if (FUNC8(hw, addr))
			goto fail;
		/* Write bits 14:8 */
		if (FUNC8(hw, reg_high))
			goto fail;
		/* Write bits 7:0 */
		if (FUNC8(hw, reg & 0xFF))
			goto fail;
		/* Write csum */
		if (FUNC8(hw, csum))
			goto fail;
		/* Re-start condition */
		FUNC4(hw);
		/* Device Address and read indication */
		if (FUNC8(hw, addr | 1))
			goto fail;
		/* Get upper bits */
		if (FUNC6(hw, &high_bits))
			goto fail;
		/* Get low bits */
		if (FUNC6(hw, &low_bits))
			goto fail;
		/* Get csum */
		if (FUNC1(hw, &csum_byte))
			goto fail;
		/* NACK */
		if (FUNC2(hw, FALSE))
			goto fail;
		FUNC5(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		*val = (high_bits << 8) | low_bits;
		return 0;

fail:
		FUNC3(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		retry++;
		if (retry < max_retry)
			FUNC0("I2C byte read combined error - Retrying.\n");
		else
			FUNC0("I2C byte read combined error.\n");
	} while (retry < max_retry);

	return IXGBE_ERR_I2C;
}