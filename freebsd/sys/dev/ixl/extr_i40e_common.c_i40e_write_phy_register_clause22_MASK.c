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
 int I40E_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_GLGEN_MSCA_DEVADD_SHIFT ; 
 int I40E_GLGEN_MSCA_MDICMD_MASK ; 
 int I40E_GLGEN_MSCA_PHYADD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT ; 
 int I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK ; 
 int I40E_MDIO_CLAUSE22_STCODE_MASK ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

enum i40e_status_code FUNC5(struct i40e_hw *hw,
					u16 reg, u8 phy_addr, u16 value)
{
	enum i40e_status_code status = I40E_ERR_TIMEOUT;
	u8 port_num = (u8)hw->func_caps.mdio_port_num;
	u32 command  = 0;
	u16 retry = 1000;

	command = value << I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT;
	FUNC4(hw, FUNC1(port_num), command);

	command = (reg << I40E_GLGEN_MSCA_DEVADD_SHIFT) |
		  (phy_addr << I40E_GLGEN_MSCA_PHYADD_SHIFT) |
		  (I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK) |
		  (I40E_MDIO_CLAUSE22_STCODE_MASK) |
		  (I40E_GLGEN_MSCA_MDICMD_MASK);

	FUNC4(hw, FUNC0(port_num), command);
	do {
		command = FUNC3(hw, FUNC0(port_num));
		if (!(command & I40E_GLGEN_MSCA_MDICMD_MASK)) {
			status = I40E_SUCCESS;
			break;
		}
		FUNC2(10);
		retry--;
	} while (retry);

	return status;
}