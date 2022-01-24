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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_GLGEN_I2CCMD_OP_MASK ; 
 int I40E_GLGEN_I2CCMD_PHYADD_SHIFT ; 
 int I40E_GLGEN_I2CCMD_REGADD_SHIFT ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

s32
FUNC5(struct ixl_pf *pf, u8 byte_offset,
		  u8 dev_addr, u8 *data)
{
	struct i40e_hw *hw = &pf->hw;
	u32 reg = 0;
	s32 status;
	*data = 0;

	reg |= (byte_offset << I40E_GLGEN_I2CCMD_REGADD_SHIFT);
	reg |= (((dev_addr >> 1) & 0x7) << I40E_GLGEN_I2CCMD_PHYADD_SHIFT);
	reg |= I40E_GLGEN_I2CCMD_OP_MASK;
	FUNC4(hw, FUNC0(hw->func_caps.mdio_port_num), reg);

	status = FUNC2(hw, hw->func_caps.mdio_port_num);

	/* Get data from I2C register */
	reg = FUNC3(hw, FUNC0(hw->func_caps.mdio_port_num));

	/* Retrieve data readed from EEPROM */
	*data = (u8)(reg & 0xff);

	if (status)
		FUNC1(pf, IXL_DBG_I2C, "I2C byte read error\n");
	return status;
}