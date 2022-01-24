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
struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int ajus_flags; int /*<<< orphan*/  ajus_ac_callout; int /*<<< orphan*/  ajus_io_callout; int /*<<< orphan*/  ajus_irq_cookie; int /*<<< orphan*/ * ajus_irq_res; int /*<<< orphan*/  ajus_dev; struct tty* ajus_ttyp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*) ; 
 int ALTERA_JTAG_UART_FLAG_CONSOLE ; 
 int /*<<< orphan*/ * aju_cons_sc ; 
 int /*<<< orphan*/  FUNC3 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 

void
FUNC8(struct altera_jtag_uart_softc *sc)
{
	struct tty *tp = sc->ajus_ttyp;

	/*
	 * If we're using interrupts, disable and release the interrupt
	 * handler now.  Otherwise drain the polling timeout.
	 */
	if (sc->ajus_irq_res != NULL) {
		FUNC0(sc);
		FUNC3(sc);
		FUNC2(sc);
		FUNC4(sc->ajus_dev, sc->ajus_irq_res,
		    sc->ajus_irq_cookie);
	} else
		FUNC5(&sc->ajus_io_callout);
	FUNC5(&sc->ajus_ac_callout);
	if (sc->ajus_flags & ALTERA_JTAG_UART_FLAG_CONSOLE)
		aju_cons_sc = NULL;
	FUNC6(tp);
	FUNC7(tp);
	FUNC1(sc);
}