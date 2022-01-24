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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_CS ; 
 int E1000_EECD_DI ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int*) ; 
 scalar_t__ e1000_nvm_eeprom_microwire ; 
 scalar_t__ e1000_nvm_eeprom_spi ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int*) ; 

void FUNC5(struct e1000_hw *hw)
{
	u32 eecd;

	FUNC0("e1000_stop_nvm");

	eecd = FUNC1(hw, E1000_EECD);
	if (hw->nvm.type == e1000_nvm_eeprom_spi) {
		/* Pull CS high */
		eecd |= E1000_EECD_CS;
		FUNC3(hw, &eecd);
	} else if (hw->nvm.type == e1000_nvm_eeprom_microwire) {
		/* CS on Microwire is active-high */
		eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
		FUNC2(hw, E1000_EECD, eecd);
		FUNC4(hw, &eecd);
		FUNC3(hw, &eecd);
	}
}