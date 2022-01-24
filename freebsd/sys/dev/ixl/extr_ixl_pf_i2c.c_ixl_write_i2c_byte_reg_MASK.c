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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mdio_port_num; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_GLGEN_I2CCMD_DATA_MASK ; 
 int I40E_GLGEN_I2CCMD_DATA_SHIFT ; 
 int I40E_GLGEN_I2CCMD_OP_MASK ; 
 int I40E_GLGEN_I2CCMD_PHYADD_MASK ; 
 int I40E_GLGEN_I2CCMD_PHYADD_SHIFT ; 
 int I40E_GLGEN_I2CCMD_REGADD_MASK ; 
 int I40E_GLGEN_I2CCMD_REGADD_SHIFT ; 
 scalar_t__ I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ixl_pf*,int,int,int*) ; 
 scalar_t__ FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

s32
FUNC6(struct ixl_pf *pf, u8 byte_offset,
		       u8 dev_addr, u8 data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;
	u32 reg = 0;
	u8 upperbyte = 0;
	u16 datai2c = 0;

	status = FUNC2(pf, byte_offset + 1, dev_addr, &upperbyte);
	datai2c = ((u16)upperbyte << 8) | (u16)data;
	reg = FUNC4(hw, FUNC0(hw->func_caps.mdio_port_num));

	/* Form write command */
	reg &= ~I40E_GLGEN_I2CCMD_PHYADD_MASK;
	reg |= (((dev_addr >> 1) & 0x7) << I40E_GLGEN_I2CCMD_PHYADD_SHIFT);
	reg &= ~I40E_GLGEN_I2CCMD_REGADD_MASK;
	reg |= (byte_offset << I40E_GLGEN_I2CCMD_REGADD_SHIFT);
	reg &= ~I40E_GLGEN_I2CCMD_DATA_MASK;
	reg |= (datai2c << I40E_GLGEN_I2CCMD_DATA_SHIFT);
	reg &= ~I40E_GLGEN_I2CCMD_OP_MASK;

	/* Write command to registers controling I2C - data and address. */
	FUNC5(hw, FUNC0(hw->func_caps.mdio_port_num), reg);

	status = FUNC3(hw, hw->func_caps.mdio_port_num);

	if (status)
		FUNC1(pf, IXL_DBG_I2C, "I2C byte write error\n");
	return status;
}