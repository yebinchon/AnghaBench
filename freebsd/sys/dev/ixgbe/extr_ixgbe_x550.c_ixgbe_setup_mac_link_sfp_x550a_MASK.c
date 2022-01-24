#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_9__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ;scalar_t__ (* write_reg ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_10__ {int addr; TYPE_4__ ops; } ;
struct TYPE_8__ {int lan_id; int instance_id; } ;
struct TYPE_6__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_5__ phy; TYPE_3__ bus; TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ixgbe_link_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 int IXGBE_CS4223_SKU_ID ; 
 int IXGBE_CS4227_EDC_MODE_CX1 ; 
 int IXGBE_CS4227_EDC_MODE_SR ; 
 int IXGBE_CS4227_EFUSE_PDF_SKU ; 
 int IXGBE_CS4227_LINE_SPARE24_LSB ; 
 scalar_t__ IXGBE_DEV_ID_X550EM_A_SFP_N ; 
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ; 
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA ; 
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR ; 
 int /*<<< orphan*/  IXGBE_MDIO_ZERO_DEV_TYPE ; 
 int /*<<< orphan*/  IXGBE_SB_IOSF_TARGET_KR_PHY ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int*) ; 

s32 FUNC12(struct ixgbe_hw *hw,
				    ixgbe_link_speed speed,
				    bool autoneg_wait_to_complete)
{
	s32 ret_val;
	u16 reg_phy_ext;
	bool setup_linear = FALSE;
	u32 reg_slice, reg_phy_int, slice_offset;

	FUNC2(autoneg_wait_to_complete);

	/* Check if SFP module is supported and linear */
	ret_val = FUNC5(hw, &setup_linear);

	/* If no SFP module present, then return success. Return success since
	 * SFP not present error is not excepted in the setup MAC link flow.
	 */
	if (ret_val == IXGBE_ERR_SFP_NOT_PRESENT)
		return IXGBE_SUCCESS;

	if (ret_val != IXGBE_SUCCESS)
		return ret_val;

	if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP_N) {
		/* Configure internal PHY for native SFI based on module type */
		ret_val = hw->mac.ops.read_iosf_sb_reg(hw,
				   FUNC1(hw->bus.lan_id),
				   IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_phy_int);

		if (ret_val != IXGBE_SUCCESS)
			return ret_val;

		reg_phy_int &= IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_DA;
		if (!setup_linear)
			reg_phy_int |= IXGBE_KRM_PMD_FLX_MASK_ST20_SFI_10G_SR;

		ret_val = hw->mac.ops.write_iosf_sb_reg(hw,
				   FUNC1(hw->bus.lan_id),
				   IXGBE_SB_IOSF_TARGET_KR_PHY, reg_phy_int);

		if (ret_val != IXGBE_SUCCESS)
			return ret_val;

		/* Setup SFI internal link. */
		ret_val = FUNC4(hw, &speed);
	} else {
		/* Configure internal PHY for KR/KX. */
		FUNC3(hw, speed);

		if (hw->phy.addr == 0x0 || hw->phy.addr == 0xFFFF) {
			/* Find Address */
			FUNC0("Invalid NW_MNG_IF_SEL.MDIO_PHY_ADD value\n");
			return IXGBE_ERR_PHY_ADDR_INVALID;
		}

		/* Get external PHY SKU id */
		ret_val = hw->phy.ops.read_reg(hw, IXGBE_CS4227_EFUSE_PDF_SKU,
					IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);

		if (ret_val != IXGBE_SUCCESS)
			return ret_val;

		/* When configuring quad port CS4223, the MAC instance is part
		 * of the slice offset.
		 */
		if (reg_phy_ext == IXGBE_CS4223_SKU_ID)
			slice_offset = (hw->bus.lan_id +
					(hw->bus.instance_id << 1)) << 12;
		else
			slice_offset = hw->bus.lan_id << 12;

		/* Configure CS4227/CS4223 LINE side to proper mode. */
		reg_slice = IXGBE_CS4227_LINE_SPARE24_LSB + slice_offset;

		ret_val = hw->phy.ops.read_reg(hw, reg_slice,
					IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);

		if (ret_val != IXGBE_SUCCESS)
			return ret_val;

		reg_phy_ext &= ~((IXGBE_CS4227_EDC_MODE_CX1 << 1) |
				 (IXGBE_CS4227_EDC_MODE_SR << 1));

		if (setup_linear)
			reg_phy_ext = (IXGBE_CS4227_EDC_MODE_CX1 << 1) | 0x1;
		else
			reg_phy_ext = (IXGBE_CS4227_EDC_MODE_SR << 1) | 0x1;
		ret_val = hw->phy.ops.write_reg(hw, reg_slice,
					 IXGBE_MDIO_ZERO_DEV_TYPE, reg_phy_ext);

		/* Flush previous write with a read */
		ret_val = hw->phy.ops.read_reg(hw, reg_slice,
					IXGBE_MDIO_ZERO_DEV_TYPE, &reg_phy_ext);
	}
	return ret_val;
}