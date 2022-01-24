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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct xhci_softc {TYPE_1__ sc_bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int XHCI_HCSPARAMS0 ; 
 scalar_t__ XHCI_ID_USB_LEGACY ; 
 scalar_t__ XHCI_XECP_BIOS_SEM ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ XHCI_XECP_OS_SEM ; 
 scalar_t__ FUNC3 (struct xhci_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct xhci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_softc*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  capa ; 
 struct xhci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(device_t self)
{
	struct xhci_softc *sc = FUNC6(self);
	uint32_t cparams;
	uint32_t eecp;
	uint32_t eec;
	uint16_t to;
	uint8_t bios_sem;

	cparams = FUNC4(sc, capa, XHCI_HCSPARAMS0);

	eec = -1;

	/* Synchronise with the BIOS if it owns the controller. */
	for (eecp = FUNC0(cparams) << 2; eecp != 0 && FUNC2(eec);
	    eecp += FUNC2(eec) << 2) {
		eec = FUNC4(sc, capa, eecp);

		if (FUNC1(eec) != XHCI_ID_USB_LEGACY)
			continue;
		bios_sem = FUNC3(sc, capa, eecp +
		    XHCI_XECP_BIOS_SEM);
		if (bios_sem == 0)
			continue;
		FUNC7(sc->sc_bus.bdev, "waiting for BIOS "
		    "to give up control\n");
		FUNC5(sc, capa, eecp +
		    XHCI_XECP_OS_SEM, 1);
		to = 500;
		while (1) {
			bios_sem = FUNC3(sc, capa, eecp +
			    XHCI_XECP_BIOS_SEM);
			if (bios_sem == 0)
				break;

			if (--to == 0) {
				FUNC7(sc->sc_bus.bdev,
				    "timed out waiting for BIOS\n");
				break;
			}
			FUNC8(NULL, hz / 100);	/* wait 10ms */
		}
	}
	return (0);
}