#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  lan_id; } ;
struct TYPE_4__ {scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ bus; TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE ; 
 int /*<<< orphan*/  IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G ; 
 int /*<<< orphan*/  IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B ; 
 int /*<<< orphan*/  IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS ; 
 int /*<<< orphan*/  IXGBE_SB_IOSF_TARGET_KR_PHY ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC12(struct ixgbe_hw *hw)
{
	s32 status;
	u32 reg_val;

	/* Disable AN and force speed to 10G Serial. */
	status = hw->mac.ops.read_iosf_sb_reg(hw,
					FUNC0(hw->bus.lan_id),
					IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
	if (status != IXGBE_SUCCESS)
		return status;
	reg_val &= ~IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE;
	reg_val &= ~IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK;
	reg_val |= IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_10G;
	status = hw->mac.ops.write_iosf_sb_reg(hw,
					FUNC0(hw->bus.lan_id),
					IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
	if (status != IXGBE_SUCCESS)
		return status;

	/* Set near-end loopback clocks. */
	status = hw->mac.ops.read_iosf_sb_reg(hw,
				FUNC2(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
	if (status != IXGBE_SUCCESS)
		return status;
	reg_val |= IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_32B;
	reg_val |= IXGBE_KRM_PORT_CAR_GEN_CTRL_NELB_KRPCS;
	status = hw->mac.ops.write_iosf_sb_reg(hw,
				FUNC2(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
	if (status != IXGBE_SUCCESS)
		return status;

	/* Set loopback enable. */
	status = hw->mac.ops.read_iosf_sb_reg(hw,
				FUNC1(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
	if (status != IXGBE_SUCCESS)
		return status;
	reg_val |= IXGBE_KRM_PMD_DFX_BURNIN_TX_RX_KR_LB_MASK;
	status = hw->mac.ops.write_iosf_sb_reg(hw,
				FUNC1(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
	if (status != IXGBE_SUCCESS)
		return status;

	/* Training bypass. */
	status = hw->mac.ops.read_iosf_sb_reg(hw,
				FUNC3(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
	if (status != IXGBE_SUCCESS)
		return status;
	reg_val |= IXGBE_KRM_RX_TRN_LINKUP_CTRL_PROTOCOL_BYPASS;
	status = hw->mac.ops.write_iosf_sb_reg(hw,
				FUNC3(hw->bus.lan_id),
				IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);

	return status;
}