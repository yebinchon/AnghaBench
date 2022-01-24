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
struct altera_jtag_uart_softc {int ajus_flags; int /*<<< orphan*/  ajus_ac_callout; int /*<<< orphan*/  ajus_io_callout; int /*<<< orphan*/ * ajus_irq_res; int /*<<< orphan*/  ajus_unit; struct tty* ajus_ttyp; int /*<<< orphan*/  ajus_dev; int /*<<< orphan*/  ajus_irq_cookie; int /*<<< orphan*/  ajus_jtag_missed; int /*<<< orphan*/ * ajus_jtag_missedp; int /*<<< orphan*/  ajus_jtag_present; int /*<<< orphan*/ * ajus_jtag_presentp; int /*<<< orphan*/  ajus_buffer_data; int /*<<< orphan*/ * ajus_buffer_datap; int /*<<< orphan*/  ajus_buffer_valid; int /*<<< orphan*/ * ajus_buffer_validp; int /*<<< orphan*/  ajus_lock; int /*<<< orphan*/ * ajus_lockp; int /*<<< orphan*/  ajus_mem_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  AJU_AC_POLLINTERVAL ; 
 int /*<<< orphan*/  AJU_IO_POLLINTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  AJU_TTYNAME ; 
 int /*<<< orphan*/  FUNC3 (struct altera_jtag_uart_softc*) ; 
 int ALTERA_JTAG_UART_FLAG_CONSOLE ; 
 scalar_t__ BERI_UART_BASE ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  aju_ac_callout ; 
 int /*<<< orphan*/  aju_cons_buffer_data ; 
 int /*<<< orphan*/  aju_cons_buffer_valid ; 
 int /*<<< orphan*/  aju_cons_jtag_missed ; 
 int /*<<< orphan*/  aju_cons_jtag_present ; 
 int /*<<< orphan*/  aju_cons_lock ; 
 struct altera_jtag_uart_softc* aju_cons_sc ; 
 int /*<<< orphan*/  aju_intr ; 
 int /*<<< orphan*/  FUNC4 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  aju_io_callout ; 
 int /*<<< orphan*/  aju_ttydevsw ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct altera_jtag_uart_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct tty* FUNC11 (int /*<<< orphan*/ *,struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct altera_jtag_uart_softc *sc)
{
	struct tty *tp;
	int error;

	FUNC2(sc);

	/*
	 * XXXRW: Currently, we detect the console solely based on it using a
	 * reserved address, and borrow console-level locks and buffer if so.
	 * Is there a better way?
	 */
	if (FUNC10(sc->ajus_mem_res) == BERI_UART_BASE) {
		sc->ajus_lockp = &aju_cons_lock;
		sc->ajus_buffer_validp = &aju_cons_buffer_valid;
		sc->ajus_buffer_datap = &aju_cons_buffer_data;
		sc->ajus_jtag_presentp = &aju_cons_jtag_present;
		sc->ajus_jtag_missedp = &aju_cons_jtag_missed;
		sc->ajus_flags |= ALTERA_JTAG_UART_FLAG_CONSOLE;
	} else {
		sc->ajus_lockp = &sc->ajus_lock;
		sc->ajus_buffer_validp = &sc->ajus_buffer_valid;
		sc->ajus_buffer_datap = &sc->ajus_buffer_data;
		sc->ajus_jtag_presentp = &sc->ajus_jtag_present;
		sc->ajus_jtag_missedp = &sc->ajus_jtag_missed;
	}

	/*
	 * Disable interrupts regardless of whether or not we plan to use
	 * them.  We will register an interrupt handler now if they will be
	 * used, but not re-enable intil later once the remainder of the tty
	 * layer is properly initialised, as we're not ready for input yet.
	 */
	FUNC0(sc);
	FUNC4(sc);
	FUNC3(sc);
	if (sc->ajus_irq_res != NULL) {
		error = FUNC6(sc->ajus_dev, sc->ajus_irq_res,
		    INTR_ENTROPY | INTR_TYPE_TTY | INTR_MPSAFE, NULL,
		    aju_intr, sc, &sc->ajus_irq_cookie);
		if (error) {
			FUNC9(sc->ajus_dev,
			    "could not activate interrupt\n");
			FUNC1(sc);
			return (error);
		}
	}
	tp = sc->ajus_ttyp = FUNC11(&aju_ttydevsw, sc);
	if (sc->ajus_flags & ALTERA_JTAG_UART_FLAG_CONSOLE) {
		aju_cons_sc = sc;
		FUNC12(tp, 0);
	}
	FUNC13(tp, NULL, "%s%d", AJU_TTYNAME, sc->ajus_unit);

	/*
	 * If we will be using interrupts, enable them now; otherwise, start
	 * polling.  From this point onwards, input can arrive.
	 */
	if (sc->ajus_irq_res != NULL) {
		FUNC0(sc);
		FUNC5(sc);
		FUNC3(sc);
	} else {
		FUNC7(&sc->ajus_io_callout, 1);
		FUNC8(&sc->ajus_io_callout, AJU_IO_POLLINTERVAL,
		    aju_io_callout, sc);
	}
	FUNC7(&sc->ajus_ac_callout, 1);
	FUNC8(&sc->ajus_ac_callout, AJU_AC_POLLINTERVAL,
	    aju_ac_callout, sc);
	return (0);
}