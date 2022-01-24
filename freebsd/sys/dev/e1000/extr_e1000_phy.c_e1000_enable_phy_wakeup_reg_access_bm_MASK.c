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
typedef  int u16 ;
struct TYPE_2__ {int addr; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int BM_PORT_CTRL_PAGE ; 
 int BM_WUC_ENABLE_BIT ; 
 int /*<<< orphan*/  BM_WUC_ENABLE_REG ; 
 int BM_WUC_HOST_WU_BIT ; 
 int BM_WUC_ME_WU_BIT ; 
 int BM_WUC_PAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_ERR_PARAM ; 
 int IGP_PAGE_SHIFT ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

s32 FUNC6(struct e1000_hw *hw, u16 *phy_reg)
{
	s32 ret_val;
	u16 temp;

	FUNC0("e1000_enable_phy_wakeup_reg_access_bm");

	if (!phy_reg)
		return -E1000_ERR_PARAM;

	/* All page select, port ctrl and wakeup registers use phy address 1 */
	hw->phy.addr = 1;

	/* Select Port Control Registers page */
	ret_val = FUNC4(hw, (BM_PORT_CTRL_PAGE << IGP_PAGE_SHIFT));
	if (ret_val) {
		FUNC1("Could not set Port Control page\n");
		return ret_val;
	}

	ret_val = FUNC3(hw, BM_WUC_ENABLE_REG, phy_reg);
	if (ret_val) {
		FUNC2("Could not read PHY register %d.%d\n",
			  BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);
		return ret_val;
	}

	/* Enable both PHY wakeup mode and Wakeup register page writes.
	 * Prevent a power state change by disabling ME and Host PHY wakeup.
	 */
	temp = *phy_reg;
	temp |= BM_WUC_ENABLE_BIT;
	temp &= ~(BM_WUC_ME_WU_BIT | BM_WUC_HOST_WU_BIT);

	ret_val = FUNC5(hw, BM_WUC_ENABLE_REG, temp);
	if (ret_val) {
		FUNC2("Could not write PHY register %d.%d\n",
			  BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);
		return ret_val;
	}

	/* Select Host Wakeup Registers page - caller now able to write
	 * registers on the Wakeup registers page
	 */
	return FUNC4(hw, (BM_WUC_PAGE << IGP_PAGE_SHIFT));
}