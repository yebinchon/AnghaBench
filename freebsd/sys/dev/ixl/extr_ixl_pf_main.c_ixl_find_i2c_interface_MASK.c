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
struct i40e_hw {int /*<<< orphan*/  port; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_MASK ; 
 int I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_MASK ; 
 int I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	bool i2c_en, port_matched;
	u32 reg;

	for (int i = 0; i < 4; i++) {
		reg = FUNC2(hw, FUNC1(i));
		i2c_en = (reg & I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_MASK);
		port_matched = ((reg & I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_MASK)
		    >> I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT)
		    & FUNC0(hw->port);
		if (i2c_en && port_matched)
			return (i);
	}

	return (-1);
}