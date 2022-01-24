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
typedef  int /*<<< orphan*/  timeout_t ;
struct uart_softc {int sc_testintr; int /*<<< orphan*/  sc_timer; scalar_t__ sc_polled; scalar_t__ sc_leaving; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int FILTER_STRAY ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int FUNC0 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct uart_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_softc*) ; 
 int uart_poll_freq ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct uart_softc *sc = arg;
	int cnt, ipend, testintr;

	if (sc->sc_leaving)
		return (FILTER_STRAY);

	cnt = 0;
	testintr = sc->sc_testintr;
	while ((!testintr || cnt < 20) && (ipend = FUNC0(sc)) != 0) {
		cnt++;
		if (ipend & SER_INT_OVERRUN)
			FUNC3(sc);
		if (ipend & SER_INT_BREAK)
			FUNC2(sc);
		if (ipend & SER_INT_RXREADY)
			FUNC4(sc);
		if (ipend & SER_INT_SIGCHG)
			FUNC5(sc);
		if (ipend & SER_INT_TXIDLE)
			FUNC6(sc);
	}

	if (sc->sc_polled) {
		FUNC1(&sc->sc_timer, hz / uart_poll_freq,
		    (timeout_t *)uart_intr, sc);
	}

	return ((cnt == 0) ? FILTER_STRAY :
	    ((testintr && cnt == 20) ? FILTER_SCHEDULE_THREAD :
	    FILTER_HANDLED));
}