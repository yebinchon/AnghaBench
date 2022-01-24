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
struct octopci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int board_type; } ;

/* Variables and functions */
#define  CVMX_BOARD_TYPE_CUST_LANNER_MR320 129 
#define  CVMX_BOARD_TYPE_CUST_LANNER_MR955 128 
 int /*<<< orphan*/  OCTEON_FEATURE_PCIE ; 
 int OCTEON_IRQ_PCI_INT0 ; 
 int OCTEON_IRQ_PCI_INT2 ; 
 TYPE_1__* FUNC0 () ; 
 struct octopci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, int pin)
{
	struct octopci_softc *sc;
	unsigned bus, slot, func;
	unsigned irq;

	sc = FUNC1(dev);

	if (FUNC2(OCTEON_FEATURE_PCIE))
		return (OCTEON_IRQ_PCI_INT0 + pin - 1);

        bus = FUNC3(child);
        slot = FUNC5(child);
        func = FUNC4(child);

	/*
	 * Board types we have to know at compile-time.
	 */
#if defined(OCTEON_BOARD_CAPK_0100ND)
	if (bus == 0 && slot == 12 && func == 0)
		return (OCTEON_IRQ_PCI_INT2);
#endif

	/*
	 * For board types we can determine at runtime.
	 */
	switch (FUNC0()->board_type) {
#if defined(OCTEON_VENDOR_LANNER)
	case CVMX_BOARD_TYPE_CUST_LANNER_MR955:
		return (OCTEON_IRQ_PCI_INT0 + pin - 1);
	case CVMX_BOARD_TYPE_CUST_LANNER_MR320:
		if (slot < 32) {
			if (slot == 3 || slot == 9)
				irq = pin;
			else
				irq = pin - 1;
			return (OCTEON_IRQ_PCI_INT0 + (irq & 3));
		}
		break;
#endif
	default:
		break;
	}

	irq = slot + pin - 3;

	return (OCTEON_IRQ_PCI_INT0 + (irq & 3));
}