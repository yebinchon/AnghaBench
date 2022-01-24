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
struct dwc_otg_softc {int sc_current_rx_bytes; scalar_t__ sc_last_rx_status; int /*<<< orphan*/  sc_bounce_buffer; int /*<<< orphan*/  sc_current_rx_fifo; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOTG_GINTMSK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_otg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GINTMSK_RXFLVLMSK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct dwc_otg_softc *sc)
{
	FUNC0(5, "RX status clear\n");

	/* enable RX FIFO level interrupt */
	sc->sc_irq_mask |= GINTMSK_RXFLVLMSK;
	FUNC1(sc, DOTG_GINTMSK, sc->sc_irq_mask);

	if (sc->sc_current_rx_bytes != 0) {
		/* need to dump remaining data */
		FUNC2(sc->sc_io_tag, sc->sc_io_hdl,
		    sc->sc_current_rx_fifo, sc->sc_bounce_buffer,
		    sc->sc_current_rx_bytes / 4);
		/* clear number of active bytes to receive */
		sc->sc_current_rx_bytes = 0;
	}
	/* clear cached status */
	sc->sc_last_rx_status = 0;
}