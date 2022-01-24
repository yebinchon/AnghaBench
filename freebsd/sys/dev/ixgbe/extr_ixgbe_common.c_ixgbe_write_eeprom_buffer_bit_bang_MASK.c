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
struct TYPE_2__ {int address_bits; int word_page_size; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXGBE_EEPROM_A8_OPCODE_SPI ; 
 int IXGBE_EEPROM_OPCODE_BITS ; 
 int IXGBE_EEPROM_WREN_OPCODE_SPI ; 
 int IXGBE_EEPROM_WRITE_OPCODE_SPI ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct ixgbe_hw *hw, u16 offset,
					      u16 words, u16 *data)
{
	s32 status;
	u16 word;
	u16 page_size;
	u16 i;
	u8 write_opcode = IXGBE_EEPROM_WRITE_OPCODE_SPI;

	FUNC0("ixgbe_write_eeprom_buffer_bit_bang");

	/* Prepare the EEPROM for writing  */
	status = FUNC1(hw);

	if (status == IXGBE_SUCCESS) {
		if (FUNC2(hw) != IXGBE_SUCCESS) {
			FUNC3(hw);
			status = IXGBE_ERR_EEPROM;
		}
	}

	if (status == IXGBE_SUCCESS) {
		for (i = 0; i < words; i++) {
			FUNC5(hw);

			/*  Send the WRITE ENABLE command (8 bit opcode )  */
			FUNC4(hw,
						   IXGBE_EEPROM_WREN_OPCODE_SPI,
						   IXGBE_EEPROM_OPCODE_BITS);

			FUNC5(hw);

			/*
			 * Some SPI eeproms use the 8th address bit embedded
			 * in the opcode
			 */
			if ((hw->eeprom.address_bits == 8) &&
			    ((offset + i) >= 128))
				write_opcode |= IXGBE_EEPROM_A8_OPCODE_SPI;

			/* Send the Write command (8-bit opcode + addr) */
			FUNC4(hw, write_opcode,
						    IXGBE_EEPROM_OPCODE_BITS);
			FUNC4(hw, (u16)((offset + i) * 2),
						    hw->eeprom.address_bits);

			page_size = hw->eeprom.word_page_size;

			/* Send the data in burst via SPI*/
			do {
				word = data[i];
				word = (word >> 8) | (word << 8);
				FUNC4(hw, word, 16);

				if (page_size == 0)
					break;

				/* do not wrap around page */
				if (((offset + i) & (page_size - 1)) ==
				    (page_size - 1))
					break;
			} while (++i < words);

			FUNC5(hw);
			FUNC6(10);
		}
		/* Done with writing - release the EEPROM */
		FUNC3(hw);
	}

	return status;
}