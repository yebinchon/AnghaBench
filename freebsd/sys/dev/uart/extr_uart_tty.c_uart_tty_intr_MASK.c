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
struct TYPE_4__ {struct tty* tp; } ;
struct TYPE_5__ {TYPE_1__ u_tty; } ;
struct uart_softc {int sc_isquelch; int /*<<< orphan*/  sc_hwiflow; TYPE_2__ sc_u; int /*<<< orphan*/  sc_ttypend; scalar_t__ sc_leaving; } ;
struct TYPE_6__ {int c_cflag; } ;
struct tty {TYPE_3__ t_termios; } ;

/* Variables and functions */
 int CRTS_IFLOW ; 
 int SER_DCD ; 
 int SER_DCTS ; 
 int SER_DDCD ; 
 int /*<<< orphan*/  SER_DRTS ; 
 int SER_INT_BREAK ; 
 int SER_INT_MASK ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_SIGMASK ; 
 int SER_INT_TXIDLE ; 
 int TRE_BREAK ; 
 int TRE_FRAMING ; 
 int TRE_OVERRUN ; 
 int TRE_PARITY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int UART_STAT_FRAMERR ; 
 int UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int) ; 
 scalar_t__ FUNC5 (struct tty*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_softc*) ; 
 int FUNC9 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

void
FUNC11(void *arg)
{
	struct uart_softc *sc = arg;
	struct tty *tp;
	int c, err = 0, pend, sig, xc;

	if (sc->sc_leaving)
		return;

	pend = FUNC1(&sc->sc_ttypend);
	if (!(pend & SER_INT_MASK))
		return;

	tp = sc->sc_u.u_tty.tp;
	FUNC2(tp);

	if (pend & SER_INT_RXREADY) {
		while (!FUNC7(sc) && !sc->sc_isquelch) {
			xc = FUNC9(sc);
			c = xc & 0xff;
			if (xc & UART_STAT_FRAMERR)
				err |= TRE_FRAMING;
			if (xc & UART_STAT_OVERRUN)
				err |= TRE_OVERRUN;
			if (xc & UART_STAT_PARERR)
				err |= TRE_PARITY;
			if (FUNC5(tp, c, err) != 0) {
				sc->sc_isquelch = 1;
				if ((tp->t_termios.c_cflag & CRTS_IFLOW) &&
				    !sc->sc_hwiflow)
					FUNC0(sc, SER_DRTS);
			} else
				FUNC8(sc);
		}
	}

	if (pend & SER_INT_BREAK)
		FUNC5(tp, 0, TRE_BREAK);

	if (pend & SER_INT_SIGCHG) {
		sig = pend & SER_INT_SIGMASK;
		if (sig & SER_DDCD)
			FUNC4(tp, sig & SER_DCD);
		if (sig & SER_DCTS)
			FUNC10(tp);
	}

	if (pend & SER_INT_TXIDLE)
		FUNC10(tp);
	FUNC6(tp);
	FUNC3(tp);
}