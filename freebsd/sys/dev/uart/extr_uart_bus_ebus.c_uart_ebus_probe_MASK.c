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
struct uart_softc {int /*<<< orphan*/ * sc_class; } ;
struct uart_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  UART_DEV_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uart_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char const* sparc64_model ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct uart_devinfo*) ; 
 int /*<<< orphan*/  uart_ns8250_class ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	const char *nm, *cmpt;
	struct uart_softc *sc;
	struct uart_devinfo dummy;

	sc = FUNC1(dev);
	sc->sc_class = NULL;

	nm = FUNC3(dev);
	cmpt = FUNC2(dev);
	if (cmpt == NULL)
		cmpt = "";
	if (!FUNC4(nm, "lom-console") || !FUNC4(nm, "su") ||
	    !FUNC4(nm, "su_pnp") || !FUNC4(cmpt, "rsc-console") ||
	    !FUNC4(cmpt, "rsc-control") || !FUNC4(cmpt, "su") ||
	    !FUNC4(cmpt, "su16550") || !FUNC4(cmpt, "su16552")) {
		/*
		 * On AXi and AXmp boards the NS16550 (used to connect
		 * keyboard/mouse) share their IRQ lines with the i8042.
		 * Any IRQ activity (typically during attach) of the
		 * NS16550 used to connect the keyboard when actually the
		 * PS/2 keyboard is selected in OFW causes interaction
		 * with the OBP i8042 driver resulting in a hang and vice
		 * versa. As RS232 keyboards and mice obviously aren't
		 * meant to be used in parallel with PS/2 ones on these
		 * boards don't attach to the NS16550 in case the RS232
		 * keyboard isn't selected in order to prevent such hangs.
		 */
		if ((!FUNC4(sparc64_model, "SUNW,UltraAX-MP") ||
		    !FUNC4(sparc64_model, "SUNW,UltraSPARC-IIi-Engine")) &&
		    FUNC6(UART_DEV_KEYBOARD, &dummy)) {
				FUNC0(dev);
				return (ENXIO);
		}
		sc->sc_class = &uart_ns8250_class;
		return (FUNC5(dev, 0, 0, 0, 0, 0, 0));
	}

	return (ENXIO);
}