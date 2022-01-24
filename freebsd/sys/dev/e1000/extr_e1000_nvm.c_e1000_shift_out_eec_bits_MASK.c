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
typedef  int u32 ;
typedef  int u16 ;
struct e1000_nvm_info {scalar_t__ type; int /*<<< orphan*/  delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_DI ; 
 int E1000_EECD_DO ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int*) ; 
 scalar_t__ e1000_nvm_eeprom_microwire ; 
 scalar_t__ e1000_nvm_eeprom_spi ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct e1000_hw *hw, u16 data, u16 count)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	u32 eecd = FUNC1(hw, E1000_EECD);
	u32 mask;

	FUNC0("e1000_shift_out_eec_bits");

	mask = 0x01 << (count - 1);
	if (nvm->type == e1000_nvm_eeprom_microwire)
		eecd &= ~E1000_EECD_DO;
	else
	if (nvm->type == e1000_nvm_eeprom_spi)
		eecd |= E1000_EECD_DO;

	do {
		eecd &= ~E1000_EECD_DI;

		if (data & mask)
			eecd |= E1000_EECD_DI;

		FUNC3(hw, E1000_EECD, eecd);
		FUNC2(hw);

		FUNC6(nvm->delay_usec);

		FUNC5(hw, &eecd);
		FUNC4(hw, &eecd);

		mask >>= 1;
	} while (mask);

	eecd &= ~E1000_EECD_DI;
	FUNC3(hw, E1000_EECD, eecd);
}