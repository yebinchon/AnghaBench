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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int address_bits; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXGBE_EEPROM_A8_OPCODE_SPI ; 
 int IXGBE_EEPROM_OPCODE_BITS ; 
 int IXGBE_EEPROM_READ_OPCODE_SPI ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC7(struct ixgbe_hw *hw, u16 offset,
					     u16 words, u16 *data)
{
	s32 status;
	u16 word_in;
	u8 read_opcode = IXGBE_EEPROM_READ_OPCODE_SPI;
	u16 i;

	FUNC0("ixgbe_read_eeprom_buffer_bit_bang");

	/* Prepare the EEPROM for reading  */
	status = FUNC1(hw);

	if (status == IXGBE_SUCCESS) {
		if (FUNC2(hw) != IXGBE_SUCCESS) {
			FUNC3(hw);
			status = IXGBE_ERR_EEPROM;
		}
	}

	if (status == IXGBE_SUCCESS) {
		for (i = 0; i < words; i++) {
			FUNC6(hw);
			/*
			 * Some SPI eeproms use the 8th address bit embedded
			 * in the opcode
			 */
			if ((hw->eeprom.address_bits == 8) &&
			    ((offset + i) >= 128))
				read_opcode |= IXGBE_EEPROM_A8_OPCODE_SPI;

			/* Send the READ command (opcode + addr) */
			FUNC5(hw, read_opcode,
						    IXGBE_EEPROM_OPCODE_BITS);
			FUNC5(hw, (u16)((offset + i) * 2),
						    hw->eeprom.address_bits);

			/* Read the data. */
			word_in = FUNC4(hw, 16);
			data[i] = (word_in >> 8) | (word_in << 8);
		}

		/* End this read operation */
		FUNC3(hw);
	}

	return status;
}