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
struct uart_softc {scalar_t__ sc_isquelch; int /*<<< orphan*/  sc_hwiflow; scalar_t__ sc_leaving; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;

/* Variables and functions */
 int CRTS_IFLOW ; 
 int SER_DRTS ; 
 int /*<<< orphan*/  SER_INT_RXREADY ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int) ; 
 struct uart_softc* FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	struct uart_softc *sc;

	sc = FUNC1(tp);
	if (sc == NULL || sc->sc_leaving)
		return;

	if (sc->sc_isquelch) {
		if ((tp->t_termios.c_cflag & CRTS_IFLOW) && !sc->sc_hwiflow)
			FUNC0(sc, SER_DRTS|SER_RTS);
		sc->sc_isquelch = 0;
		FUNC2(sc, SER_INT_RXREADY);
	}
}