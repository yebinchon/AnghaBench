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
typedef  int uint32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OHCI_ALL_INTRS ; 
 int /*<<< orphan*/  OHCI_COMMAND_STATUS ; 
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  OHCI_HCFS_RESET ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_DISABLE ; 
 int OHCI_IR ; 
 int /*<<< orphan*/  OHCI_OCR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(device_t self)
{
	struct resource *res;
	uint32_t ctl;
	int rid;
	int i;

	rid = FUNC1(0);
	res = FUNC2(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res == NULL)
		return;

	ctl = FUNC3(res, OHCI_CONTROL);
	if (ctl & OHCI_IR) {
		if (bootverbose)
			FUNC6("ohci early: "
			    "SMM active, request owner change\n");
		FUNC5(res, OHCI_COMMAND_STATUS, OHCI_OCR);
		for (i = 0; (i < 100) && (ctl & OHCI_IR); i++) {
			FUNC0(1000);
			ctl = FUNC3(res, OHCI_CONTROL);
		}
		if (ctl & OHCI_IR) {
			if (bootverbose)
				FUNC6("ohci early: "
				    "SMM does not respond, resetting\n");
			FUNC5(res, OHCI_CONTROL, OHCI_HCFS_RESET);
		}
		/* Disable interrupts */
		FUNC5(res, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
	}

	FUNC4(self, SYS_RES_MEMORY, rid, res);
}