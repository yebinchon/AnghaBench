#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E1000_ERR_PHY ; 
 scalar_t__ E1000_GEN_CTL_ADDRESS_SHIFT ; 
 scalar_t__ E1000_GEN_CTL_READY ; 
 scalar_t__ E1000_GEN_POLL_TIMEOUT ; 
 scalar_t__ FUNC2 (struct e1000_hw*,scalar_t__) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

s32 FUNC5(struct e1000_hw *hw, u32 reg,
				      u32 offset, u8 data)
{
	u32 i, regvalue = 0;

	FUNC0("e1000_write_8bit_ctrl_reg_generic");

	/* Set up the address and data */
	regvalue = ((u32)data) | (offset << E1000_GEN_CTL_ADDRESS_SHIFT);
	FUNC3(hw, reg, regvalue);

	/* Poll the ready bit to see if the MDI read completed */
	for (i = 0; i < E1000_GEN_POLL_TIMEOUT; i++) {
		FUNC4(5);
		regvalue = FUNC2(hw, reg);
		if (regvalue & E1000_GEN_CTL_READY)
			break;
	}
	if (!(regvalue & E1000_GEN_CTL_READY)) {
		FUNC1("Reg %08x did not indicate ready\n", reg);
		return -E1000_ERR_PHY;
	}

	return E1000_SUCCESS;
}