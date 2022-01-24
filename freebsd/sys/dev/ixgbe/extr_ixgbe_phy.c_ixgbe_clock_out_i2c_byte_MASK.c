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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC8(struct ixgbe_hw *hw, u8 data)
{
	s32 status = IXGBE_SUCCESS;
	s32 i;
	u32 i2cctl;
	bool bit;

	FUNC0("ixgbe_clock_out_i2c_byte");

	for (i = 7; i >= 0; i--) {
		bit = (data >> i) & 0x1;
		status = FUNC7(hw, bit);

		if (status != IXGBE_SUCCESS)
			break;
	}

	/* Release SDA line (set high) */
	i2cctl = FUNC4(hw, FUNC1(hw));
	i2cctl |= FUNC3(hw);
	i2cctl |= FUNC2(hw);
	FUNC6(hw, FUNC1(hw), i2cctl);
	FUNC5(hw);

	return status;
}