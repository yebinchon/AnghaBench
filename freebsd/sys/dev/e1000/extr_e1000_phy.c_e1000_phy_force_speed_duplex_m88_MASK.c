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
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int*) ;scalar_t__ (* commit ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {scalar_t__ type; int id; TYPE_1__ ops; scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ E1000_SUCCESS ; 
 int FALSE ; 
#define  I210_I_PHY_ID 133 
#define  I347AT4_E_PHY_ID 132 
 int M88E1000_EPSCR_TX_CLK_25 ; 
 int /*<<< orphan*/  M88E1000_EXT_PHY_SPEC_CTRL ; 
 int /*<<< orphan*/  M88E1000_PHY_PAGE_SELECT ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_CTRL ; 
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ; 
 int M88E1000_PSCR_AUTO_X_MODE ; 
#define  M88E1112_E_PHY_ID 131 
#define  M88E1340M_E_PHY_ID 130 
#define  M88E1512_E_PHY_ID 129 
#define  M88E1543_E_PHY_ID 128 
 int /*<<< orphan*/  PHY_CONTROL ; 
 int /*<<< orphan*/  PHY_FORCE_LIMIT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ e1000_phy_i210 ; 
 scalar_t__ e1000_phy_m88 ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct e1000_hw*) ; 
 scalar_t__ FUNC12 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 

s32 FUNC16(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u16 phy_data;
	bool link;

	FUNC0("e1000_phy_force_speed_duplex_m88");

	/* I210 and I211 devices support Auto-Crossover in forced operation. */
	if (phy->type != e1000_phy_i210) {
		/* Clear Auto-Crossover to force MDI manually.  M88E1000
		 * requires MDI forced whenever speed and duplex are forced.
		 */
		ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL,
					    &phy_data);
		if (ret_val)
			return ret_val;

		phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;
		ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL,
					     phy_data);
		if (ret_val)
			return ret_val;

		FUNC2("M88E1000 PSCR: %X\n", phy_data);
	}

	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
	if (ret_val)
		return ret_val;

	FUNC3(hw, &phy_data);

	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
	if (ret_val)
		return ret_val;

	/* Reset the phy to commit changes. */
	ret_val = hw->phy.ops.commit(hw);
	if (ret_val)
		return ret_val;

	if (phy->autoneg_wait_to_complete) {
		FUNC1("Waiting for forced speed/duplex link on M88 phy.\n");

		ret_val = FUNC4(hw, PHY_FORCE_LIMIT,
						     100000, &link);
		if (ret_val)
			return ret_val;

		if (!link) {
			bool reset_dsp = TRUE;

			switch (hw->phy.id) {
			case I347AT4_E_PHY_ID:
			case M88E1340M_E_PHY_ID:
			case M88E1112_E_PHY_ID:
			case M88E1543_E_PHY_ID:
			case M88E1512_E_PHY_ID:
			case I210_I_PHY_ID:
				reset_dsp = FALSE;
				break;
			default:
				if (hw->phy.type != e1000_phy_m88)
					reset_dsp = FALSE;
				break;
			}

			if (!reset_dsp) {
				FUNC1("Link taking longer than expected.\n");
			} else {
				/* We didn't get link.
				 * Reset the DSP and cross our fingers.
				 */
				ret_val = phy->ops.write_reg(hw,
						M88E1000_PHY_PAGE_SELECT,
						0x001d);
				if (ret_val)
					return ret_val;
				ret_val = FUNC5(hw);
				if (ret_val)
					return ret_val;
			}
		}

		/* Try once more */
		ret_val = FUNC4(hw, PHY_FORCE_LIMIT,
						     100000, &link);
		if (ret_val)
			return ret_val;
	}

	if (hw->phy.type != e1000_phy_m88)
		return E1000_SUCCESS;

	if (hw->phy.id == I347AT4_E_PHY_ID ||
		hw->phy.id == M88E1340M_E_PHY_ID ||
		hw->phy.id == M88E1112_E_PHY_ID)
		return E1000_SUCCESS;
	if (hw->phy.id == I210_I_PHY_ID)
		return E1000_SUCCESS;
	if ((hw->phy.id == M88E1543_E_PHY_ID) ||
	    (hw->phy.id == M88E1512_E_PHY_ID))
		return E1000_SUCCESS;
	ret_val = phy->ops.read_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_data);
	if (ret_val)
		return ret_val;

	/* Resetting the phy means we need to re-force TX_CLK in the
	 * Extended PHY Specific Control Register to 25MHz clock from
	 * the reset value of 2.5MHz.
	 */
	phy_data |= M88E1000_EPSCR_TX_CLK_25;
	ret_val = phy->ops.write_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
	if (ret_val)
		return ret_val;

	/* In addition, we must re-enable CRS on Tx for both half and full
	 * duplex.
	 */
	ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
	if (ret_val)
		return ret_val;

	phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
	ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);

	return ret_val;
}