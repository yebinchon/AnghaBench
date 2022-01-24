#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* write_reg ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* read_reg ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FALSE ; 
 int IXGBE_CONTROL_EOL_NL ; 
 int IXGBE_CONTROL_MASK_NL ; 
#define  IXGBE_CONTROL_NL 130 
 int IXGBE_CONTROL_SHIFT_NL ; 
 int IXGBE_CONTROL_SOL_NL ; 
 int IXGBE_DATA_MASK_NL ; 
#define  IXGBE_DATA_NL 129 
#define  IXGBE_DELAY_NL 128 
 int /*<<< orphan*/  IXGBE_ERROR_INVALID_STATE ; 
 scalar_t__ IXGBE_ERR_PHY ; 
 int IXGBE_MDIO_PHY_XS_CONTROL ; 
 int /*<<< orphan*/  IXGBE_MDIO_PHY_XS_DEV_TYPE ; 
 int IXGBE_MDIO_PHY_XS_RESET ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  IXGBE_TWINAX_DEV ; 
 int TRUE ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC12 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC13 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC14 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int) ; 

s32 FUNC16(struct ixgbe_hw *hw)
{
	u16 phy_offset, control, eword, edata, block_crc;
	bool end_data = FALSE;
	u16 list_offset, data_offset;
	u16 phy_data = 0;
	s32 ret_val = IXGBE_SUCCESS;
	u32 i;

	FUNC0("ixgbe_reset_phy_nl");

	/* Blocked by MNG FW so bail */
	if (FUNC5(hw))
		goto out;

	hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
			     IXGBE_MDIO_PHY_XS_DEV_TYPE, &phy_data);

	/* reset the PHY and poll for completion */
	hw->phy.ops.write_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
			      IXGBE_MDIO_PHY_XS_DEV_TYPE,
			      (phy_data | IXGBE_MDIO_PHY_XS_RESET));

	for (i = 0; i < 100; i++) {
		hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_XS_CONTROL,
				     IXGBE_MDIO_PHY_XS_DEV_TYPE, &phy_data);
		if ((phy_data & IXGBE_MDIO_PHY_XS_RESET) == 0)
			break;
		FUNC7(10);
	}

	if ((phy_data & IXGBE_MDIO_PHY_XS_RESET) != 0) {
		FUNC1("PHY reset did not complete.\n");
		ret_val = IXGBE_ERR_PHY;
		goto out;
	}

	/* Get init offsets */
	ret_val = FUNC6(hw, &list_offset,
						      &data_offset);
	if (ret_val != IXGBE_SUCCESS)
		goto out;

	ret_val = hw->eeprom.ops.read(hw, data_offset, &block_crc);
	data_offset++;
	while (!end_data) {
		/*
		 * Read control word from PHY init contents offset
		 */
		ret_val = hw->eeprom.ops.read(hw, data_offset, &eword);
		if (ret_val)
			goto err_eeprom;
		control = (eword & IXGBE_CONTROL_MASK_NL) >>
			   IXGBE_CONTROL_SHIFT_NL;
		edata = eword & IXGBE_DATA_MASK_NL;
		switch (control) {
		case IXGBE_DELAY_NL:
			data_offset++;
			FUNC2("DELAY: %d MS\n", edata);
			FUNC7(edata);
			break;
		case IXGBE_DATA_NL:
			FUNC1("DATA:\n");
			data_offset++;
			ret_val = hw->eeprom.ops.read(hw, data_offset,
						      &phy_offset);
			if (ret_val)
				goto err_eeprom;
			data_offset++;
			for (i = 0; i < edata; i++) {
				ret_val = hw->eeprom.ops.read(hw, data_offset,
							      &eword);
				if (ret_val)
					goto err_eeprom;
				hw->phy.ops.write_reg(hw, phy_offset,
						      IXGBE_TWINAX_DEV, eword);
				FUNC3("Wrote %4.4x to %4.4x\n", eword,
					  phy_offset);
				data_offset++;
				phy_offset++;
			}
			break;
		case IXGBE_CONTROL_NL:
			data_offset++;
			FUNC1("CONTROL:\n");
			if (edata == IXGBE_CONTROL_EOL_NL) {
				FUNC1("EOL\n");
				end_data = TRUE;
			} else if (edata == IXGBE_CONTROL_SOL_NL) {
				FUNC1("SOL\n");
			} else {
				FUNC1("Bad control value\n");
				ret_val = IXGBE_ERR_PHY;
				goto out;
			}
			break;
		default:
			FUNC1("Bad control type\n");
			ret_val = IXGBE_ERR_PHY;
			goto out;
		}
	}

out:
	return ret_val;

err_eeprom:
	FUNC4(IXGBE_ERROR_INVALID_STATE,
		      "eeprom read at offset %d failed", data_offset);
	return IXGBE_ERR_PHY;
}