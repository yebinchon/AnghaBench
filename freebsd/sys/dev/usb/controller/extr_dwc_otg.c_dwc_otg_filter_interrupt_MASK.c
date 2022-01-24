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
typedef  int uint32_t ;
struct dwc_otg_softc {int sc_irq_mask; scalar_t__ sc_dev_in_ep_max; scalar_t__ sc_xfer_complete; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DOTG_GINTMSK ; 
 int /*<<< orphan*/  DOTG_GINTSTS ; 
 int DWC_OTG_MSK_GINT_THREAD_IRQ ; 
 int FUNC1 (struct dwc_otg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int GINTSTS_IEPINT ; 
 int GINTSTS_NPTXFEMP ; 
 int GINTSTS_PTXFEMP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc_otg_softc*) ; 

int
FUNC6(void *arg)
{
	struct dwc_otg_softc *sc = arg;
	int retval = FILTER_HANDLED;
	uint32_t status;

	FUNC3(&sc->sc_bus);

	/* read and clear interrupt status */
	status = FUNC1(sc, DOTG_GINTSTS);

	/* clear interrupts we are handling here */
	FUNC2(sc, DOTG_GINTSTS, status & ~DWC_OTG_MSK_GINT_THREAD_IRQ);

	/* check for USB state change interrupts */
	if ((status & DWC_OTG_MSK_GINT_THREAD_IRQ) != 0)
		retval = FILTER_SCHEDULE_THREAD;

	/* clear FIFO empty interrupts */
	if (status & sc->sc_irq_mask &
	    (GINTSTS_PTXFEMP | GINTSTS_NPTXFEMP)) {
		sc->sc_irq_mask &= ~(GINTSTS_PTXFEMP | GINTSTS_NPTXFEMP);
		FUNC2(sc, DOTG_GINTMSK, sc->sc_irq_mask);
	}
	/* clear all IN endpoint interrupts */
	if (status & GINTSTS_IEPINT) {
		uint32_t temp;
		uint8_t x;

		for (x = 0; x != sc->sc_dev_in_ep_max; x++) {
			temp = FUNC1(sc, FUNC0(x));
			/*
			 * NOTE: Need to clear all interrupt bits,
			 * because some appears to be unmaskable and
			 * can cause an interrupt loop:
			 */
			if (temp != 0)
				FUNC2(sc, FUNC0(x), temp);
		}
	}

	/* poll FIFOs, if any */
	FUNC5(sc);

	if (sc->sc_xfer_complete != 0)
		retval = FILTER_SCHEDULE_THREAD;

	FUNC4(&sc->sc_bus);

	return (retval);
}