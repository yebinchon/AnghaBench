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
struct altera_jtag_uart_softc {int ajus_flags; int /*<<< orphan*/  ajus_alt_break_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*) ; 
 int ALTERA_JTAG_UART_FLAG_CONSOLE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC3 (struct altera_jtag_uart_softc*) ; 
 scalar_t__ FUNC4 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 

__attribute__((used)) static void
FUNC9(struct altera_jtag_uart_softc *sc, struct tty *tp)
{
	int c;

	FUNC6(tp, MA_OWNED);
	FUNC1(sc);

	while (FUNC4(sc)) {
		c = FUNC3(sc);
		FUNC2(sc);
#ifdef KDB
		if (sc->ajus_flags & ALTERA_JTAG_UART_FLAG_CONSOLE)
			kdb_alt_break(c, &sc->ajus_alt_break_state);
#endif
		FUNC7(tp, c, 0);
		FUNC0(sc);
	}
	FUNC2(sc);
	FUNC8(tp);
	FUNC0(sc);
}