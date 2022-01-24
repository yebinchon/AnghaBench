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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_5__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;scalar_t__ (* write_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_DEV_TYPE ; 
 int IXGBE_MDIO_GLOBAL_ALARM_1_INT ; 
 int IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN ; 
 int /*<<< orphan*/  IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK ; 
 int /*<<< orphan*/  IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK ; 
 int IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN ; 
 int IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN ; 
 int /*<<< orphan*/  IXGBE_MDIO_GLOBAL_INT_MASK ; 
 int IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN ; 
 int IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN ; 
 int /*<<< orphan*/  IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK ; 
 int /*<<< orphan*/  IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int*) ; 
 scalar_t__ ixgbe_mac_X550EM_a ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC9(struct ixgbe_hw *hw)
{
	u32 status;
	u16 reg;
	bool lsc;

	/* Clear interrupt flags */
	status = FUNC0(hw, &lsc);

	/* Enable link status change alarm */

	/* Enable the LASI interrupts on X552 devices to receive notifications
	 * of the link configurations of the external PHY and correspondingly
	 * support the configuration of the internal iXFI link, since iXFI does
	 * not support auto-negotiation. This is not required for X553 devices
	 * having KR support, which performs auto-negotiations and which is used
	 * as the internal link to the external PHY. Hence adding a check here
	 * to avoid enabling LASI interrupts for X553 devices.
	 */
	if (hw->mac.type != ixgbe_mac_X550EM_a) {
		status = hw->phy.ops.read_reg(hw,
					IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK,
					IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &reg);

		if (status != IXGBE_SUCCESS)
			return status;

		reg |= IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN;

		status = hw->phy.ops.write_reg(hw,
					IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK,
					IXGBE_MDIO_AUTO_NEG_DEV_TYPE, reg);

		if (status != IXGBE_SUCCESS)
			return status;
	}

	/* Enable high temperature failure and global fault alarms */
	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_MASK,
				      IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				      &reg);

	if (status != IXGBE_SUCCESS)
		return status;

	reg |= (IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN |
		IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN);

	status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_MASK,
				       IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				       reg);

	if (status != IXGBE_SUCCESS)
		return status;

	/* Enable vendor Auto-Neg alarm and Global Interrupt Mask 1 alarm */
	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK,
				      IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				      &reg);

	if (status != IXGBE_SUCCESS)
		return status;

	reg |= (IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN |
		IXGBE_MDIO_GLOBAL_ALARM_1_INT);

	status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK,
				       IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				       reg);

	if (status != IXGBE_SUCCESS)
		return status;

	/* Enable chip-wide vendor alarm */
	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK,
				      IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				      &reg);

	if (status != IXGBE_SUCCESS)
		return status;

	reg |= IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN;

	status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK,
				       IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
				       reg);

	return status;
}