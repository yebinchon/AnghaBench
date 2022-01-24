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
typedef  scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_ERR_I2C ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 scalar_t__ E1000_I2C_CLK_IN ; 
 int E1000_I2C_T_HIGH ; 
 int E1000_I2C_T_LOW ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int TRUE ; 
 int FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	s32 status = E1000_SUCCESS;
	u32 i = 0;
	u32 i2cctl = FUNC2(hw, E1000_I2CPARAMS);
	u32 timeout = 10;
	bool ack = TRUE;

	FUNC0("e1000_get_i2c_ack");

	FUNC5(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC6(E1000_I2C_T_HIGH);

	/* Wait until SCL returns high */
	for (i = 0; i < timeout; i++) {
		FUNC6(1);
		i2cctl = FUNC2(hw, E1000_I2CPARAMS);
		if (i2cctl & E1000_I2C_CLK_IN)
			break;
	}
	if (!(i2cctl & E1000_I2C_CLK_IN))
		return E1000_ERR_I2C;

	ack = FUNC3(&i2cctl);
	if (ack) {
		FUNC1("I2C ack was not received.\n");
		status = E1000_ERR_I2C;
	}

	FUNC4(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC6(E1000_I2C_T_LOW);

	return status;
}