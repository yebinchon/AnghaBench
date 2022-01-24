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
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  EHCI_CAPLEN_HCIVERSION ; 
 scalar_t__ EHCI_EC_LEGSUP ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  EHCI_HCCPARAMS ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ EHCI_LEGSUP_BIOS_SEM ; 
 scalar_t__ EHCI_LEGSUP_OS_SEM ; 
 scalar_t__ EHCI_USBINTR ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(device_t self)
{
	struct resource *res;
	uint32_t cparams;
	uint32_t eec;
	uint8_t eecp;
	uint8_t bios_sem;
	uint8_t offs;
	int rid;
	int i;

	rid = FUNC5(0);
	res = FUNC6(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res == NULL)
		return;

	cparams = FUNC7(res, EHCI_HCCPARAMS);

	/* Synchronise with the BIOS if it owns the controller. */
	for (eecp = FUNC4(cparams); eecp != 0;
	    eecp = FUNC3(eec)) {
		eec = FUNC10(self, eecp, 4);
		if (FUNC2(eec) != EHCI_EC_LEGSUP) {
			continue;
		}
		bios_sem = FUNC10(self, eecp +
		    EHCI_LEGSUP_BIOS_SEM, 1);
		if (bios_sem == 0) {
			continue;
		}
		if (bootverbose)
			FUNC12("ehci early: "
			    "SMM active, request owner change\n");

		FUNC11(self, eecp + EHCI_LEGSUP_OS_SEM, 1, 1);

		for (i = 0; (i < 100) && (bios_sem != 0); i++) {
			FUNC0(1000);
			bios_sem = FUNC10(self, eecp +
			    EHCI_LEGSUP_BIOS_SEM, 1);
		}

		if (bios_sem != 0) {
			if (bootverbose)
				FUNC12("ehci early: "
				    "SMM does not respond\n");
		}
		/* Disable interrupts */
		offs = FUNC1(FUNC7(res, EHCI_CAPLEN_HCIVERSION));
		FUNC9(res, offs + EHCI_USBINTR, 0);
	}
	FUNC8(self, SYS_RES_MEMORY, rid, res);
}