#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_EEC_DI ; 
 scalar_t__ IXGBE_EEC_DO ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,scalar_t__*) ; 

__attribute__((used)) static u16 FUNC5(struct ixgbe_hw *hw, u16 count)
{
	u32 eec;
	u32 i;
	u16 data = 0;

	FUNC0("ixgbe_shift_in_eeprom_bits");

	/*
	 * In order to read a register from the EEPROM, we need to shift
	 * 'count' bits in from the EEPROM. Bits are "shifted in" by raising
	 * the clock input to the EEPROM (setting the SK bit), and then reading
	 * the value of the "DO" bit.  During this "shifting in" process the
	 * "DI" bit should always be clear.
	 */
	eec = FUNC2(hw, FUNC1(hw));

	eec &= ~(IXGBE_EEC_DO | IXGBE_EEC_DI);

	for (i = 0; i < count; i++) {
		data = data << 1;
		FUNC4(hw, &eec);

		eec = FUNC2(hw, FUNC1(hw));

		eec &= ~(IXGBE_EEC_DI);
		if (eec & IXGBE_EEC_DO)
			data |= 1;

		FUNC3(hw, &eec);
	}

	return data;
}