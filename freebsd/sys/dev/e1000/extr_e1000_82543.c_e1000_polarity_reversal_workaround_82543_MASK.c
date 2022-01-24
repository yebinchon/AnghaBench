#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  M88E1000_PHY_GEN_CONTROL ; 
 int /*<<< orphan*/  M88E1000_PHY_PAGE_SELECT ; 
 scalar_t__ MII_SR_LINK_STATUS ; 
 scalar_t__ PHY_FORCE_TIME ; 
 int /*<<< orphan*/  PHY_STATUS ; 
 scalar_t__ FUNC0 (struct e1000_hw*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC12(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	u16 mii_status_reg;
	u16 i;
	bool link;

	if (!(hw->phy.ops.write_reg))
		goto out;

	/* Polarity reversal workaround for forced 10F/10H links. */

	/* Disable the transmitter on the PHY */

	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
	if (ret_val)
		goto out;
	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFFF);
	if (ret_val)
		goto out;

	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
	if (ret_val)
		goto out;

	/*
	 * This loop will early-out if the NO link condition has been met.
	 * In other words, DO NOT use e1000_phy_has_link_generic() here.
	 */
	for (i = PHY_FORCE_TIME; i > 0; i--) {
		/*
		 * Read the MII Status Register and wait for Link Status bit
		 * to be clear.
		 */

		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &mii_status_reg);
		if (ret_val)
			goto out;

		ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &mii_status_reg);
		if (ret_val)
			goto out;

		if (!(mii_status_reg & ~MII_SR_LINK_STATUS))
			break;
		FUNC1(100);
	}

	/* Recommended delay time after link has been lost */
	FUNC1(1000);

	/* Now we will re-enable the transmitter on the PHY */

	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
	if (ret_val)
		goto out;
	FUNC1(50);
	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFF0);
	if (ret_val)
		goto out;
	FUNC1(50);
	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFF00);
	if (ret_val)
		goto out;
	FUNC1(50);
	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0x0000);
	if (ret_val)
		goto out;

	ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
	if (ret_val)
		goto out;

	/*
	 * Read the MII Status Register and wait for Link Status bit
	 * to be set.
	 */
	ret_val = FUNC0(hw, PHY_FORCE_TIME, 100000, &link);
	if (ret_val)
		goto out;

out:
	return ret_val;
}