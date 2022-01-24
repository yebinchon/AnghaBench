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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
struct adapter {struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EM_NVM_MSIX_N_MASK ; 
 int EM_NVM_MSIX_N_SHIFT ; 
 int /*<<< orphan*/  EM_NVM_PCIE_CTRL ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC5(ctx);
	struct e1000_hw *hw = &adapter->hw;
	device_t dev = FUNC4(ctx);
	u16 edata;

	FUNC1(hw, EM_NVM_PCIE_CTRL, 1, &edata);
	if (bootverbose)
		FUNC0(dev, "EM_NVM_PCIE_CTRL = %#06x\n", edata);
	if (((edata & EM_NVM_MSIX_N_MASK) >> EM_NVM_MSIX_N_SHIFT) != 4) {
		FUNC0(dev, "Writing to eeprom: increasing "
		    "reported MSI-X vectors from 3 to 5...\n");
		edata &= ~(EM_NVM_MSIX_N_MASK);
		edata |= 4 << EM_NVM_MSIX_N_SHIFT;
		FUNC3(hw, EM_NVM_PCIE_CTRL, 1, &edata);
		FUNC2(hw);
		FUNC0(dev, "Writing to eeprom: done\n");
	}
}