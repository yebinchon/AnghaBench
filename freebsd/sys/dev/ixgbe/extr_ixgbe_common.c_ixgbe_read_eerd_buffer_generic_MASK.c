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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ IXGBE_EEPROM_RW_ADDR_SHIFT ; 
 scalar_t__ IXGBE_EEPROM_RW_REG_DATA ; 
 scalar_t__ IXGBE_EEPROM_RW_REG_START ; 
 int /*<<< orphan*/  IXGBE_EERD ; 
 int /*<<< orphan*/  IXGBE_ERROR_ARGUMENT ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  IXGBE_NVM_POLL_READ ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 

s32 FUNC7(struct ixgbe_hw *hw, u16 offset,
				   u16 words, u16 *data)
{
	u32 eerd;
	s32 status = IXGBE_SUCCESS;
	u32 i;

	FUNC0("ixgbe_read_eerd_buffer_generic");

	hw->eeprom.ops.init_params(hw);

	if (words == 0) {
		status = IXGBE_ERR_INVALID_ARGUMENT;
		FUNC2(IXGBE_ERROR_ARGUMENT, "Invalid EEPROM words");
		goto out;
	}

	if (offset >= hw->eeprom.word_size) {
		status = IXGBE_ERR_EEPROM;
		FUNC2(IXGBE_ERROR_ARGUMENT, "Invalid EEPROM offset");
		goto out;
	}

	for (i = 0; i < words; i++) {
		eerd = ((offset + i) << IXGBE_EEPROM_RW_ADDR_SHIFT) |
		       IXGBE_EEPROM_RW_REG_START;

		FUNC4(hw, IXGBE_EERD, eerd);
		status = FUNC5(hw, IXGBE_NVM_POLL_READ);

		if (status == IXGBE_SUCCESS) {
			data[i] = (FUNC3(hw, IXGBE_EERD) >>
				   IXGBE_EEPROM_RW_REG_DATA);
		} else {
			FUNC1("Eeprom read timed out\n");
			goto out;
		}
	}
out:
	return status;
}