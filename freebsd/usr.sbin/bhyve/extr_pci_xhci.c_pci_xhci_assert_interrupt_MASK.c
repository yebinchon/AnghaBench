#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int iman; int /*<<< orphan*/  erdp; } ;
struct TYPE_5__ {TYPE_1__ intrreg; } ;
struct TYPE_6__ {int usbcmd; int /*<<< orphan*/  usbsts; } ;
struct pci_xhci_softc {int /*<<< orphan*/  xsc_pi; TYPE_2__ rtsregs; TYPE_3__ opregs; } ;

/* Variables and functions */
 int XHCI_CMD_INTE ; 
 int /*<<< orphan*/  XHCI_ERDP_LO_BUSY ; 
 int XHCI_IMAN_INTR_ENA ; 
 int XHCI_IMAN_INTR_PEND ; 
 int /*<<< orphan*/  XHCI_STS_EINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct pci_xhci_softc *sc)
{

	sc->rtsregs.intrreg.erdp |= XHCI_ERDP_LO_BUSY;
	sc->rtsregs.intrreg.iman |= XHCI_IMAN_INTR_PEND;
	sc->opregs.usbsts |= XHCI_STS_EINT;

	/* only trigger interrupt if permitted */
	if ((sc->opregs.usbcmd & XHCI_CMD_INTE) &&
	    (sc->rtsregs.intrreg.iman & XHCI_IMAN_INTR_ENA)) {
		if (FUNC2(sc->xsc_pi))
			FUNC0(sc->xsc_pi, 0);
		else
			FUNC1(sc->xsc_pi);
	}
}