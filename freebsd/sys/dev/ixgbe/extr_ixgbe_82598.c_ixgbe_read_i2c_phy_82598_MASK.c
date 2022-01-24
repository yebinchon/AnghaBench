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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* read_reg_mdi ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* write_reg_mdi ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IXGBE_ERR_PHY ; 
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int IXGBE_GSSR_PHY0_SM ; 
 int IXGBE_GSSR_PHY1_SM ; 
 int IXGBE_I2C_EEPROM_READ_MASK ; 
 int IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS ; 
 int IXGBE_I2C_EEPROM_STATUS_MASK ; 
 int IXGBE_I2C_EEPROM_STATUS_PASS ; 
 int /*<<< orphan*/  IXGBE_MDIO_PMA_PMD_DEV_TYPE ; 
 int /*<<< orphan*/  IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR ; 
 int /*<<< orphan*/  IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA ; 
 int /*<<< orphan*/  IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_LAN_ID_1 ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ ixgbe_phy_nl ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC9(struct ixgbe_hw *hw, u8 dev_addr,
				    u8 byte_offset, u8 *eeprom_data)
{
	s32 status = IXGBE_SUCCESS;
	u16 sfp_addr = 0;
	u16 sfp_data = 0;
	u16 sfp_stat = 0;
	u16 gssr;
	u32 i;

	FUNC0("ixgbe_read_i2c_phy_82598");

	if (FUNC2(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1)
		gssr = IXGBE_GSSR_PHY1_SM;
	else
		gssr = IXGBE_GSSR_PHY0_SM;

	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) != IXGBE_SUCCESS)
		return IXGBE_ERR_SWFW_SYNC;

	if (hw->phy.type == ixgbe_phy_nl) {
		/*
		 * NetLogic phy SDA/SCL registers are at addresses 0xC30A to
		 * 0xC30D. These registers are used to talk to the SFP+
		 * module's EEPROM through the SDA/SCL (I2C) interface.
		 */
		sfp_addr = (dev_addr << 8) + byte_offset;
		sfp_addr = (sfp_addr | IXGBE_I2C_EEPROM_READ_MASK);
		hw->phy.ops.write_reg_mdi(hw,
					  IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR,
					  IXGBE_MDIO_PMA_PMD_DEV_TYPE,
					  sfp_addr);

		/* Poll status */
		for (i = 0; i < 100; i++) {
			hw->phy.ops.read_reg_mdi(hw,
						IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT,
						IXGBE_MDIO_PMA_PMD_DEV_TYPE,
						&sfp_stat);
			sfp_stat = sfp_stat & IXGBE_I2C_EEPROM_STATUS_MASK;
			if (sfp_stat != IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS)
				break;
			FUNC3(10);
		}

		if (sfp_stat != IXGBE_I2C_EEPROM_STATUS_PASS) {
			FUNC1("EEPROM read did not pass.\n");
			status = IXGBE_ERR_SFP_NOT_PRESENT;
			goto out;
		}

		/* Read data */
		hw->phy.ops.read_reg_mdi(hw, IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA,
					IXGBE_MDIO_PMA_PMD_DEV_TYPE, &sfp_data);

		*eeprom_data = (u8)(sfp_data >> 8);
	} else {
		status = IXGBE_ERR_PHY;
	}

out:
	hw->mac.ops.release_swfw_sync(hw, gssr);
	return status;
}