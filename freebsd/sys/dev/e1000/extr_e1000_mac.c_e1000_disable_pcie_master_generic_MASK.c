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
struct e1000_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ bus; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_GIO_MASTER_DISABLE ; 
 scalar_t__ E1000_ERR_MASTER_REQUESTS_PENDING ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STATUS_GIO_MASTER_ENABLE ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MASTER_DISABLE_TIMEOUT ; 
 scalar_t__ e1000_bus_type_pci_express ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

s32 FUNC6(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 timeout = MASTER_DISABLE_TIMEOUT;

	FUNC0("e1000_disable_pcie_master_generic");

	if (hw->bus.type != e1000_bus_type_pci_express)
		return E1000_SUCCESS;

	ctrl = FUNC2(hw, E1000_CTRL);
	ctrl |= E1000_CTRL_GIO_MASTER_DISABLE;
	FUNC4(hw, E1000_CTRL, ctrl);

	while (timeout) {
		if (!(FUNC2(hw, E1000_STATUS) &
		      E1000_STATUS_GIO_MASTER_ENABLE) ||
				FUNC3(hw->hw_addr))
			break;
		FUNC5(100);
		timeout--;
	}

	if (!timeout) {
		FUNC1("Master requests are pending.\n");
		return -E1000_ERR_MASTER_REQUESTS_PENDING;
	}

	return E1000_SUCCESS;
}