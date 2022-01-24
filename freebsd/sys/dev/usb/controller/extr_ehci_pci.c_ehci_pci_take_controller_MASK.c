#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {TYPE_1__ sc_bus; } ;
typedef  TYPE_2__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ EHCI_EC_LEGSUP ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  EHCI_HCCPARAMS ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ EHCI_LEGSUP_BIOS_SEM ; 
 scalar_t__ EHCI_LEGSUP_OS_SEM ; 
 void* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(device_t self)
{
	ehci_softc_t *sc = FUNC4(self);
	uint32_t cparams;
	uint32_t eec;
	uint16_t to;
	uint8_t eecp;
	uint8_t bios_sem;

	cparams = FUNC3(sc, EHCI_HCCPARAMS);

	/* Synchronise with the BIOS if it owns the controller. */
	for (eecp = FUNC2(cparams); eecp != 0;
	    eecp = FUNC1(eec)) {
		eec = FUNC6(self, eecp, 4);
		if (FUNC0(eec) != EHCI_EC_LEGSUP) {
			continue;
		}
		bios_sem = FUNC6(self, eecp +
		    EHCI_LEGSUP_BIOS_SEM, 1);
		if (bios_sem == 0) {
			continue;
		}
		FUNC5(sc->sc_bus.bdev, "waiting for BIOS "
		    "to give up control\n");
		FUNC7(self, eecp +
		    EHCI_LEGSUP_OS_SEM, 1, 1);
		to = 500;
		while (1) {
			bios_sem = FUNC6(self, eecp +
			    EHCI_LEGSUP_BIOS_SEM, 1);
			if (bios_sem == 0)
				break;

			if (--to == 0) {
				FUNC5(sc->sc_bus.bdev,
				    "timed out waiting for BIOS\n");
				break;
			}
			FUNC8(NULL, hz / 100);	/* wait 10ms */
		}
	}
	return (0);
}