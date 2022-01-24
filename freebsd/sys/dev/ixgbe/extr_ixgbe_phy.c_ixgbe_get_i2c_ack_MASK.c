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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (struct ixgbe_hw*) ; 
 int IXGBE_I2C_T_HIGH ; 
 int IXGBE_I2C_T_LOW ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static s32 FUNC12(struct ixgbe_hw *hw)
{
	u32 data_oe_bit = FUNC3(hw);
	s32 status = IXGBE_SUCCESS;
	u32 i = 0;
	u32 i2cctl = FUNC5(hw, FUNC2(hw));
	u32 timeout = 10;
	bool ack = 1;

	FUNC0("ixgbe_get_i2c_ack");

	if (data_oe_bit) {
		i2cctl |= FUNC4(hw);
		i2cctl |= data_oe_bit;
		FUNC7(hw, FUNC2(hw), i2cctl);
		FUNC6(hw);
	}
	FUNC10(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC11(IXGBE_I2C_T_HIGH);

	/* Poll for ACK.  Note that ACK in I2C spec is
	 * transition from 1 to 0 */
	for (i = 0; i < timeout; i++) {
		i2cctl = FUNC5(hw, FUNC2(hw));
		ack = FUNC8(hw, &i2cctl);

		FUNC11(1);
		if (!ack)
			break;
	}

	if (ack) {
		FUNC1("I2C ack was not received.\n");
		status = IXGBE_ERR_I2C;
	}

	FUNC9(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC11(IXGBE_I2C_T_LOW);

	return status;
}