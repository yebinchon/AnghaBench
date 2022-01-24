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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct e1000_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct e1000_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ E1000_ERR_SWFW_SYNC ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_SWFW_PHY0_SM ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC9(struct e1000_hw *hw, u8 byte_offset,
				 u8 dev_addr, u8 data)
{
	s32 status = E1000_SUCCESS;
	u32 max_retry = 1;
	u32 retry = 0;
	u16 swfw_mask = 0;

	FUNC0("e1000_write_i2c_byte_generic");

	swfw_mask = E1000_SWFW_PHY0_SM;

	if (hw->mac.ops.acquire_swfw_sync(hw, swfw_mask) != E1000_SUCCESS) {
		status = E1000_ERR_SWFW_SYNC;
		goto write_byte_out;
	}

	do {
		FUNC5(hw);

		status = FUNC2(hw, dev_addr);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC2(hw, byte_offset);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC2(hw, data);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC3(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		FUNC6(hw);
		break;

fail:
		FUNC4(hw);
		retry++;
		if (retry < max_retry)
			FUNC1("I2C byte write error - Retrying.\n");
		else
			FUNC1("I2C byte write error.\n");
	} while (retry < max_retry);

	hw->mac.ops.release_swfw_sync(hw, swfw_mask);

write_byte_out:

	return status;
}