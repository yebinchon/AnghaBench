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
struct e1000_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_DATA_OE_N ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct e1000_hw*,int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw, u8 data)
{
	s32 status = E1000_SUCCESS;
	s32 i;
	u32 i2cctl;
	bool bit = 0;

	FUNC0("e1000_clock_out_i2c_byte");

	for (i = 7; i >= 0; i--) {
		bit = (data >> i) & 0x1;
		status = FUNC4(hw, bit);

		if (status != E1000_SUCCESS)
			break;
	}

	/* Release SDA line (set high) */
	i2cctl = FUNC1(hw, E1000_I2CPARAMS);

	i2cctl |= E1000_I2C_DATA_OE_N;
	FUNC3(hw, E1000_I2CPARAMS, i2cctl);
	FUNC2(hw);

	return status;
}