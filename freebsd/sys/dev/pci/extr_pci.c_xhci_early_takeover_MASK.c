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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ XHCI_CAPLENGTH ; 
 int FUNC2 (int) ; 
 int XHCI_HCSPARAMS0 ; 
 scalar_t__ XHCI_ID_USB_LEGACY ; 
 scalar_t__ XHCI_USBCMD ; 
 int XHCI_USBSTS ; 
 scalar_t__ XHCI_XECP_BIOS_SEM ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ XHCI_XECP_OS_SEM ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct resource*,scalar_t__) ; 
 int FUNC7 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(device_t self)
{
	struct resource *res;
	uint32_t cparams;
	uint32_t eec;
	uint8_t eecp;
	uint8_t bios_sem;
	uint8_t offs;
	int rid;
	int i;

	rid = FUNC1(0);
	res = FUNC5(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res == NULL)
		return;

	cparams = FUNC7(res, XHCI_HCSPARAMS0);

	eec = -1;

	/* Synchronise with the BIOS if it owns the controller. */
	for (eecp = FUNC2(cparams) << 2; eecp != 0 && FUNC4(eec);
	    eecp += FUNC4(eec) << 2) {
		eec = FUNC7(res, eecp);

		if (FUNC3(eec) != XHCI_ID_USB_LEGACY)
			continue;

		bios_sem = FUNC6(res, eecp + XHCI_XECP_BIOS_SEM);
		if (bios_sem == 0)
			continue;

		if (bootverbose)
			FUNC11("xhci early: "
			    "SMM active, request owner change\n");

		FUNC9(res, eecp + XHCI_XECP_OS_SEM, 1);

		/* wait a maximum of 5 second */

		for (i = 0; (i < 5000) && (bios_sem != 0); i++) {
			FUNC0(1000);
			bios_sem = FUNC6(res, eecp +
			    XHCI_XECP_BIOS_SEM);
		}

		if (bios_sem != 0) {
			if (bootverbose)
				FUNC11("xhci early: "
				    "SMM does not respond\n");
		}

		/* Disable interrupts */
		offs = FUNC6(res, XHCI_CAPLENGTH);
		FUNC10(res, offs + XHCI_USBCMD, 0);
		FUNC7(res, offs + XHCI_USBSTS);
	}
	FUNC8(self, SYS_RES_MEMORY, rid, res);
}