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
typedef  int u8 ;
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
 int TRUE ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC13(struct e1000_hw *hw, u8 byte_offset,
				u8 dev_addr, u8 *data)
{
	s32 status = E1000_SUCCESS;
	u32 max_retry = 10;
	u32 retry = 1;
	u16 swfw_mask = 0;

	bool nack = TRUE;

	FUNC0("e1000_read_i2c_byte_generic");

	swfw_mask = E1000_SWFW_PHY0_SM;

	do {
		if (hw->mac.ops.acquire_swfw_sync(hw, swfw_mask)
		    != E1000_SUCCESS) {
			status = E1000_ERR_SWFW_SYNC;
			goto read_byte_out;
		}

		FUNC7(hw);

		/* Device Address and write indication */
		status = FUNC4(hw, dev_addr);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC5(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC4(hw, byte_offset);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC5(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		FUNC7(hw);

		/* Device Address and read indication */
		status = FUNC4(hw, (dev_addr | 0x1));
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC5(hw);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC2(hw, data);
		if (status != E1000_SUCCESS)
			goto fail;

		status = FUNC3(hw, nack);
		if (status != E1000_SUCCESS)
			goto fail;

		FUNC8(hw);
		break;

fail:
		hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		FUNC9(100);
		FUNC6(hw);
		retry++;
		if (retry < max_retry)
			FUNC1("I2C byte read error - Retrying.\n");
		else
			FUNC1("I2C byte read error.\n");

	} while (retry < max_retry);

	hw->mac.ops.release_swfw_sync(hw, swfw_mask);

read_byte_out:

	return status;
}