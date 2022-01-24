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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ E1000_ERR_PHY ; 
 int /*<<< orphan*/  E1000_EXTCNF_CTRL ; 
 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ; 
 int FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MDIO_OWNERSHIP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32
FUNC7(struct e1000_hw *hw)
{
	u32 extcnf_ctrl;
	s32 i = 0;
	/* XXX assert that mutex is held */
	FUNC1("e1000_get_hw_semaphore_82573");

	FUNC0(hw);
	extcnf_ctrl = FUNC3(hw, E1000_EXTCNF_CTRL);
	do {
		extcnf_ctrl |= E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
		FUNC4(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
		extcnf_ctrl = FUNC3(hw, E1000_EXTCNF_CTRL);

		if (extcnf_ctrl & E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP)
			break;

		FUNC6(2);
		i++;
	} while (i < MDIO_OWNERSHIP_TIMEOUT);

	if (i == MDIO_OWNERSHIP_TIMEOUT) {
		/* Release semaphores */
		FUNC5(hw);
		FUNC2("Driver can't access the PHY\n");
		return -E1000_ERR_PHY;
	}

	return E1000_SUCCESS;
}