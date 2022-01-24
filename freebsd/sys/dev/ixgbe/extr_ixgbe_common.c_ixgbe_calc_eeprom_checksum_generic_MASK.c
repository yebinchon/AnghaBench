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
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IXGBE_EEPROM_CHECKSUM ; 
 scalar_t__ IXGBE_EEPROM_SUM ; 
 int /*<<< orphan*/  IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_FW_PTR ; 
 scalar_t__ IXGBE_PCIE_ANALOG_PTR ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ; 

s32 FUNC6(struct ixgbe_hw *hw)
{
	u16 i;
	u16 j;
	u16 checksum = 0;
	u16 length = 0;
	u16 pointer = 0;
	u16 word = 0;

	FUNC0("ixgbe_calc_eeprom_checksum_generic");

	/* Include 0x0-0x3F in the checksum */
	for (i = 0; i < IXGBE_EEPROM_CHECKSUM; i++) {
		if (hw->eeprom.ops.read(hw, i, &word)) {
			FUNC1("EEPROM read failed\n");
			return IXGBE_ERR_EEPROM;
		}
		checksum += word;
	}

	/* Include all data from pointers except for the fw pointer */
	for (i = IXGBE_PCIE_ANALOG_PTR; i < IXGBE_FW_PTR; i++) {
		if (hw->eeprom.ops.read(hw, i, &pointer)) {
			FUNC1("EEPROM read failed\n");
			return IXGBE_ERR_EEPROM;
		}

		/* If the pointer seems invalid */
		if (pointer == 0xFFFF || pointer == 0)
			continue;

		if (hw->eeprom.ops.read(hw, pointer, &length)) {
			FUNC1("EEPROM read failed\n");
			return IXGBE_ERR_EEPROM;
		}

		if (length == 0xFFFF || length == 0)
			continue;

		for (j = pointer + 1; j <= pointer + length; j++) {
			if (hw->eeprom.ops.read(hw, j, &word)) {
				FUNC1("EEPROM read failed\n");
				return IXGBE_ERR_EEPROM;
			}
			checksum += word;
		}
	}

	checksum = (u16)IXGBE_EEPROM_SUM - checksum;

	return (s32)checksum;
}