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
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 scalar_t__ E1000_EECD_FLUDONE_I210 ; 
 int /*<<< orphan*/  E1000_ERR_NVM ; 
 scalar_t__ E1000_FLUDONE_ATTEMPTS ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val = -E1000_ERR_NVM;
	u32 i, reg;

	FUNC0("e1000_pool_flash_update_done_i210");

	for (i = 0; i < E1000_FLUDONE_ATTEMPTS; i++) {
		reg = FUNC1(hw, E1000_EECD);
		if (reg & E1000_EECD_FLUDONE_I210) {
			ret_val = E1000_SUCCESS;
			break;
		}
		FUNC2(5);
	}

	return ret_val;
}