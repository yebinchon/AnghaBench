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
struct altera_jtag_uart_softc {int /*<<< orphan*/  ajus_io_callout; struct tty* ajus_ttyp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AJU_IO_POLLINTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*,struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_jtag_uart_softc*,struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct altera_jtag_uart_softc *sc = arg;
	struct tty *tp = sc->ajus_ttyp;

	FUNC5(tp);
	FUNC0(sc);

	/*
	 * It would be convenient if we could share code with aju_intr() here
	 * by testing the control register for ALTERA_JTAG_UART_CONTROL_RI and
	 * ALTERA_JTAG_UART_CONTROL_WI.  Unfortunately, it's not clear that
	 * this is supported, so do all the work to poll for both input and
	 * output.
	 */
	FUNC2(sc, tp);
	FUNC3(sc, tp);

	/*
	 * Reschedule next poll attempt.  There's some argument that we should
	 * do adaptive polling based on the expectation of I/O: is something
	 * pending in the output buffer, or have we recently had input, but we
	 * don't.
	 */
	FUNC4(&sc->ajus_io_callout, AJU_IO_POLLINTERVAL,
	    aju_io_callout, sc);
	FUNC1(sc);
	FUNC6(tp);
}