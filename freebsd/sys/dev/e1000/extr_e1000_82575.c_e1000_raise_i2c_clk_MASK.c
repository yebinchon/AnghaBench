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
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_CLK_OE_N ; 
 int /*<<< orphan*/  E1000_I2C_CLK_OUT ; 
 int /*<<< orphan*/  E1000_I2C_T_RISE ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw, u32 *i2cctl)
{
	FUNC0("e1000_raise_i2c_clk");

	*i2cctl |= E1000_I2C_CLK_OUT;
	*i2cctl &= ~E1000_I2C_CLK_OE_N;
	FUNC2(hw, E1000_I2CPARAMS, *i2cctl);
	FUNC1(hw);

	/* SCL rise time (1000ns) */
	FUNC3(E1000_I2C_T_RISE);
}