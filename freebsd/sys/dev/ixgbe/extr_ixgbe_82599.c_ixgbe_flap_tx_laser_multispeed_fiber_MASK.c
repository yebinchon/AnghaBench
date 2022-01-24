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
struct TYPE_2__ {scalar_t__ autotry_restart; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 

void FUNC4(struct ixgbe_hw *hw)
{
	FUNC0("ixgbe_flap_tx_laser_multispeed_fiber");

	/* Blocked by MNG FW so bail */
	if (FUNC1(hw))
		return;

	if (hw->mac.autotry_restart) {
		FUNC2(hw);
		FUNC3(hw);
		hw->mac.autotry_restart = FALSE;
	}
}