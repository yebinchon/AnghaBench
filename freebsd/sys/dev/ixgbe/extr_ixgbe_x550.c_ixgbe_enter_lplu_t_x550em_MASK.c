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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  autoneg_advertised; TYPE_2__ ops; } ;
struct TYPE_8__ {scalar_t__ (* setup_link ) (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_6__ {int ctrl_word_3; } ;
struct ixgbe_hw {TYPE_5__ phy; TYPE_4__ mac; scalar_t__ wol_enabled; TYPE_1__ eeprom; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ ixgbe_link_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IXGBE_FUSES0_REV_MASK ; 
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_DEV_TYPE ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_VENDOR_STAT ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM ; 
 int /*<<< orphan*/  IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK ; 
 int /*<<< orphan*/  IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG ; 
 int /*<<< orphan*/  IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  NVM_INIT_CTRL_3 ; 
 int NVM_INIT_CTRL_3_LPLU ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,scalar_t__*) ; 
 scalar_t__ ixgbe_mac_X550EM_x ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ) ; 

s32 FUNC13(struct ixgbe_hw *hw)
{
	u16 an_10g_cntl_reg, autoneg_reg, speed;
	s32 status;
	ixgbe_link_speed lcd_speed;
	u32 save_autoneg;
	bool link_up;

	/* SW LPLU not required on later HW revisions. */
	if ((hw->mac.type == ixgbe_mac_X550EM_x) &&
	    (IXGBE_FUSES0_REV_MASK &
	     FUNC1(hw, FUNC0(0))))
		return IXGBE_SUCCESS;

	/* If blocked by MNG FW, then don't restart AN */
	if (FUNC2(hw))
		return IXGBE_SUCCESS;

	status = FUNC3(hw, &link_up);
	if (status != IXGBE_SUCCESS)
		return status;

	status = FUNC6(hw, NVM_INIT_CTRL_3, &hw->eeprom.ctrl_word_3);

	if (status != IXGBE_SUCCESS)
		return status;

	/* If link is down, LPLU disabled in NVM, WoL disabled, or manageability
	 * disabled, then force link down by entering low power mode.
	 */
	if (!link_up || !(hw->eeprom.ctrl_word_3 & NVM_INIT_CTRL_3_LPLU) ||
	    !(hw->wol_enabled || FUNC5(hw)))
		return FUNC7(hw, FALSE);

	/* Determine LCD */
	status = FUNC4(hw, &lcd_speed);

	if (status != IXGBE_SUCCESS)
		return status;

	/* If no valid LCD link speed, then force link down and exit. */
	if (lcd_speed == IXGBE_LINK_SPEED_UNKNOWN)
		return FUNC7(hw, FALSE);

	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_STAT,
				      IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
				      &speed);

	if (status != IXGBE_SUCCESS)
		return status;

	/* If no link now, speed is invalid so take link down */
	status = FUNC3(hw, &link_up);
	if (status != IXGBE_SUCCESS)
		return FUNC7(hw, FALSE);

	/* clear everything but the speed bits */
	speed &= IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK;

	/* If current speed is already LCD, then exit. */
	if (((speed == IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB) &&
	     (lcd_speed == IXGBE_LINK_SPEED_1GB_FULL)) ||
	    ((speed == IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB) &&
	     (lcd_speed == IXGBE_LINK_SPEED_10GB_FULL)))
		return status;

	/* Clear AN completed indication */
	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM,
				      IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
				      &autoneg_reg);

	if (status != IXGBE_SUCCESS)
		return status;

	status = hw->phy.ops.read_reg(hw, IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG,
			     IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
			     &an_10g_cntl_reg);

	if (status != IXGBE_SUCCESS)
		return status;

	status = hw->phy.ops.read_reg(hw,
			     IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG,
			     IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
			     &autoneg_reg);

	if (status != IXGBE_SUCCESS)
		return status;

	save_autoneg = hw->phy.autoneg_advertised;

	/* Setup link at least common link speed */
	status = hw->mac.ops.setup_link(hw, lcd_speed, FALSE);

	/* restore autoneg from before setting lplu speed */
	hw->phy.autoneg_advertised = save_autoneg;

	return status;
}