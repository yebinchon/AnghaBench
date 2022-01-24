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
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int /*<<< orphan*/  E1000_CTRL_EXT_SDP3_DATA ; 
 int /*<<< orphan*/  E1000_PCS_CFG0 ; 
 int /*<<< orphan*/  E1000_PCS_CFG_PCS_EN ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct e1000_hw *hw)
{
	u32 reg;

	FUNC0("e1000_shutdown_serdes_link_82575");

	if ((hw->phy.media_type != e1000_media_type_internal_serdes) &&
	    !FUNC5(hw))
		return;

	if (!FUNC4(hw)) {
		/* Disable PCS to turn off link */
		reg = FUNC1(hw, E1000_PCS_CFG0);
		reg &= ~E1000_PCS_CFG_PCS_EN;
		FUNC3(hw, E1000_PCS_CFG0, reg);

		/* shutdown the laser */
		reg = FUNC1(hw, E1000_CTRL_EXT);
		reg |= E1000_CTRL_EXT_SDP3_DATA;
		FUNC3(hw, E1000_CTRL_EXT, reg);

		/* flush the write to verify completion */
		FUNC2(hw);
		FUNC6(1);
	}

	return;
}