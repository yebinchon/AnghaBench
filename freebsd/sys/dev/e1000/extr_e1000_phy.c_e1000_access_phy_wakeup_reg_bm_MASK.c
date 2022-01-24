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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BM_WUC_ADDRESS_OPCODE ; 
 int /*<<< orphan*/  BM_WUC_DATA_OPCODE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_PHY_CTRL ; 
 int E1000_PHY_CTRL_GBE_DISABLE ; 
 int FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ e1000_pchlan ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC11(struct e1000_hw *hw, u32 offset,
					  u16 *data, bool read, bool page_set)
{
	s32 ret_val;
	u16 reg = FUNC0(offset);
	u16 page = FUNC1(offset);
	u16 phy_reg = 0;

	FUNC2("e1000_access_phy_wakeup_reg_bm");

	/* Gig must be disabled for MDIO accesses to Host Wakeup reg page */
	if ((hw->mac.type == e1000_pchlan) &&
	   (!(FUNC6(hw, E1000_PHY_CTRL) & E1000_PHY_CTRL_GBE_DISABLE)))
		FUNC4("Attempting to access page %d while gig enabled.\n",
			  page);

	if (!page_set) {
		/* Enable access to PHY wakeup registers */
		ret_val = FUNC8(hw, &phy_reg);
		if (ret_val) {
			FUNC3("Could not enable PHY wakeup reg access\n");
			return ret_val;
		}
	}

	FUNC5("Accessing PHY page %d reg 0x%x\n", page, reg);

	/* Write the Wakeup register page offset value using opcode 0x11 */
	ret_val = FUNC10(hw, BM_WUC_ADDRESS_OPCODE, reg);
	if (ret_val) {
		FUNC4("Could not write address opcode to page %d\n", page);
		return ret_val;
	}

	if (read) {
		/* Read the Wakeup register page value using opcode 0x12 */
		ret_val = FUNC9(hw, BM_WUC_DATA_OPCODE,
						  data);
	} else {
		/* Write the Wakeup register page value using opcode 0x12 */
		ret_val = FUNC10(hw, BM_WUC_DATA_OPCODE,
						   *data);
	}

	if (ret_val) {
		FUNC5("Could not access PHY reg %d.%d\n", page, reg);
		return ret_val;
	}

	if (!page_set)
		ret_val = FUNC7(hw, &phy_reg);

	return ret_val;
}