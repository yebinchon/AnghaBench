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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ mac; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_PRES ; 
 int E1000_ERR_CONFIG ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STATUS_PHYRA ; 
 int E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 scalar_t__ e1000_ich10lan ; 
 scalar_t__ e1000_ich9lan ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 scalar_t__ e1000_phy_igp_3 ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*,int*) ; 

__attribute__((used)) static s32 FUNC9(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	u32 bank = 0;
	u32 status;

	FUNC0("e1000_get_cfg_done_ich8lan");

	FUNC5(hw);

	/* Wait for indication from h/w that it has completed basic config */
	if (hw->mac.type >= e1000_ich10lan) {
		FUNC6(hw);
	} else {
		ret_val = FUNC4(hw);
		if (ret_val) {
			/* When auto config read does not complete, do not
			 * return with an error. This can happen in situations
			 * where there is no eeprom and prevents getting link.
			 */
			FUNC1("Auto Read Done did not complete\n");
			ret_val = E1000_SUCCESS;
		}
	}

	/* Clear PHY Reset Asserted bit */
	status = FUNC2(hw, E1000_STATUS);
	if (status & E1000_STATUS_PHYRA)
		FUNC3(hw, E1000_STATUS, status & ~E1000_STATUS_PHYRA);
	else
		FUNC1("PHY Reset Asserted not set - needs delay\n");

	/* If EEPROM is not marked present, init the IGP 3 PHY manually */
	if (hw->mac.type <= e1000_ich9lan) {
		if (!(FUNC2(hw, E1000_EECD) & E1000_EECD_PRES) &&
		    (hw->phy.type == e1000_phy_igp_3)) {
			FUNC7(hw);
		}
	} else {
		if (FUNC8(hw, &bank)) {
			/* Maybe we should do a basic PHY config */
			FUNC1("EEPROM not present\n");
			ret_val = -E1000_ERR_CONFIG;
		}
	}

	return ret_val;
}