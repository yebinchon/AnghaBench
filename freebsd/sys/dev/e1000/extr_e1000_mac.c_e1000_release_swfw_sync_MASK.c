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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_SW_FW_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 

void
FUNC5(struct e1000_hw *hw, u16 mask)
{
	u32 swfw_sync;

	FUNC0("e1000_release_swfw_sync");

	while (FUNC3(hw) != E1000_SUCCESS)
		; /* Empty */

	swfw_sync = FUNC1(hw, E1000_SW_FW_SYNC);
	swfw_sync &= ~mask;
	FUNC2(hw, E1000_SW_FW_SYNC, swfw_sync);

	FUNC4(hw);
}