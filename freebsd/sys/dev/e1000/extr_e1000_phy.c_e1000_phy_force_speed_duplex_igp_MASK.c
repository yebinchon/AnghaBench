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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGP01E1000_PHY_PORT_CTRL ; 
 int /*<<< orphan*/  IGP01E1000_PSCR_AUTO_MDIX ; 
 int /*<<< orphan*/  IGP01E1000_PSCR_FORCE_MDI_MDIX ; 
 int /*<<< orphan*/  PHY_CONTROL ; 
 int /*<<< orphan*/  PHY_FORCE_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

s32 FUNC10(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 phy_data;
	bool link;

	FUNC0("e1000_phy_force_speed_duplex_igp");

	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
	if (ret_val)
		return ret_val;

	FUNC3(hw, &phy_data);

	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
	if (ret_val)
		return ret_val;

	/* Clear Auto-Crossover to force MDI manually.  IGP requires MDI
	 * forced whenever speed and duplex are forced.
	 */
	ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_CTRL, &phy_data);
	if (ret_val)
		return ret_val;

	phy_data &= ~IGP01E1000_PSCR_AUTO_MDIX;
	phy_data &= ~IGP01E1000_PSCR_FORCE_MDI_MDIX;

	ret_val = phy->ops.write_reg(hw, IGP01E1000_PHY_PORT_CTRL, phy_data);
	if (ret_val)
		return ret_val;

	FUNC2("IGP PSCR: %X\n", phy_data);

	FUNC9(1);

	if (phy->autoneg_wait_to_complete) {
		FUNC1("Waiting for forced speed/duplex link on IGP phy.\n");

		ret_val = FUNC4(hw, PHY_FORCE_LIMIT,
						     100000, &link);
		if (ret_val)
			return ret_val;

		if (!link)
			FUNC1("Link taking longer than expected.\n");

		/* Try once more */
		ret_val = FUNC4(hw, PHY_FORCE_LIMIT,
						     100000, &link);
	}

	return ret_val;
}