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
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_DEBUG_PHY ; 
 int I40E_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_GLGEN_MSCA_DEVADD_SHIFT ; 
 int I40E_GLGEN_MSCA_MDIADD_SHIFT ; 
 int I40E_GLGEN_MSCA_MDICMD_MASK ; 
 int I40E_GLGEN_MSCA_MDIINPROGEN_MASK ; 
 int I40E_GLGEN_MSCA_PHYADD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT ; 
 int I40E_MDIO_CLAUSE45_OPCODE_ADDRESS_MASK ; 
 int I40E_MDIO_CLAUSE45_OPCODE_WRITE_MASK ; 
 int I40E_MDIO_CLAUSE45_STCODE_MASK ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw,
				u8 page, u16 reg, u8 phy_addr, u16 value)
{
	enum i40e_status_code status = I40E_ERR_TIMEOUT;
	u32 command  = 0;
	u16 retry = 1000;
	u8 port_num = (u8)hw->func_caps.mdio_port_num;

	command = (reg << I40E_GLGEN_MSCA_MDIADD_SHIFT) |
		  (page << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
		  (phy_addr << I40E_GLGEN_MSCA_PHYADD_SHIFT) |
		  (I40E_MDIO_CLAUSE45_OPCODE_ADDRESS_MASK) |
		  (I40E_MDIO_CLAUSE45_STCODE_MASK) |
		  (I40E_GLGEN_MSCA_MDICMD_MASK) |
		  (I40E_GLGEN_MSCA_MDIINPROGEN_MASK);
	FUNC5(hw, FUNC0(port_num), command);
	do {
		command = FUNC4(hw, FUNC0(port_num));
		if (!(command & I40E_GLGEN_MSCA_MDICMD_MASK)) {
			status = I40E_SUCCESS;
			break;
		}
		FUNC3(10);
		retry--;
	} while (retry);
	if (status) {
		FUNC2(hw, I40E_DEBUG_PHY,
			   "PHY: Can't write command to external PHY.\n");
		goto phy_write_end;
	}

	command = value << I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT;
	FUNC5(hw, FUNC1(port_num), command);

	command = (page << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
		  (phy_addr << I40E_GLGEN_MSCA_PHYADD_SHIFT) |
		  (I40E_MDIO_CLAUSE45_OPCODE_WRITE_MASK) |
		  (I40E_MDIO_CLAUSE45_STCODE_MASK) |
		  (I40E_GLGEN_MSCA_MDICMD_MASK) |
		  (I40E_GLGEN_MSCA_MDIINPROGEN_MASK);
	status = I40E_ERR_TIMEOUT;
	retry = 1000;
	FUNC5(hw, FUNC0(port_num), command);
	do {
		command = FUNC4(hw, FUNC0(port_num));
		if (!(command & I40E_GLGEN_MSCA_MDICMD_MASK)) {
			status = I40E_SUCCESS;
			break;
		}
		FUNC3(10);
		retry--;
	} while (retry);

phy_write_end:
	return status;
}