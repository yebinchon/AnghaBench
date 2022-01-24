#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ qsfp_shared_i2c_bus; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_ESDP ; 
 int IXGBE_ESDP_SDP0 ; 
 int IXGBE_ESDP_SDP1 ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct ixgbe_hw *hw, u8 byte_offset,
				 u8 dev_addr, u8 data)
{
	u32 esdp;
	s32 status;
	s32 timeout = 200;

	FUNC0("ixgbe_write_i2c_byte_82599");

	if (hw->phy.qsfp_shared_i2c_bus == TRUE) {
		/* Acquire I2C bus ownership. */
		esdp = FUNC2(hw, IXGBE_ESDP);
		esdp |= IXGBE_ESDP_SDP0;
		FUNC4(hw, IXGBE_ESDP, esdp);
		FUNC3(hw);

		while (timeout) {
			esdp = FUNC2(hw, IXGBE_ESDP);
			if (esdp & IXGBE_ESDP_SDP1)
				break;

			FUNC6(5);
			timeout--;
		}

		if (!timeout) {
			FUNC1("Driver can't access resource,"
				 " acquiring I2C bus timeout.\n");
			status = IXGBE_ERR_I2C;
			goto release_i2c_access;
		}
	}

	status = FUNC5(hw, byte_offset, dev_addr, data);

release_i2c_access:

	if (hw->phy.qsfp_shared_i2c_bus == TRUE) {
		/* Release I2C bus ownership. */
		esdp = FUNC2(hw, IXGBE_ESDP);
		esdp &= ~IXGBE_ESDP_SDP0;
		FUNC4(hw, IXGBE_ESDP, esdp);
		FUNC3(hw);
	}

	return status;
}