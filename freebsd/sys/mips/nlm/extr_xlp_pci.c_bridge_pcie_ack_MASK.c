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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_MSI_STATUS ; 
#define  PIC_PCIE_0_IRQ 131 
#define  PIC_PCIE_1_IRQ 130 
#define  PIC_PCIE_2_IRQ 129 
#define  PIC_PCIE_3_IRQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(int irq, void *arg)
{
	uint32_t node,reg;
	uint64_t base;

	node = FUNC4();
	reg = PCIE_MSI_STATUS;

	switch (irq) {
		case PIC_PCIE_0_IRQ:
			base = FUNC5(FUNC0(node));
			break;
		case PIC_PCIE_1_IRQ:
			base = FUNC5(FUNC1(node));
			break;
		case PIC_PCIE_2_IRQ:
			base = FUNC5(FUNC2(node));
			break;
		case PIC_PCIE_3_IRQ:
			base = FUNC5(FUNC3(node));
			break;
		default:
			return;
	}

	FUNC6(base, reg, 0xFFFFFFFF);
	return;
}