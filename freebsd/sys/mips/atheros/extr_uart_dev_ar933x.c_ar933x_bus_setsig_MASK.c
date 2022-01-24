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
typedef  int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct ar933x_softc {int mcr; } ;

/* Variables and functions */
 int MCR_DTR ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_MCR ; 
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc, int sig)
{
#if 0
	struct ar933x_softc *ns8250 = (struct ar933x_softc*)sc;
	struct uart_bas *bas;
	uint32_t new, old;

	bas = &sc->sc_bas;
	do {
		old = sc->sc_hwsig;
		new = old;
		if (sig & SER_DDTR) {
			SIGCHG(sig & SER_DTR, new, SER_DTR,
			    SER_DDTR);
		}
		if (sig & SER_DRTS) {
			SIGCHG(sig & SER_RTS, new, SER_RTS,
			    SER_DRTS);
		}
	} while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
	uart_lock(sc->sc_hwmtx);
	ns8250->mcr &= ~(MCR_DTR|MCR_RTS);
	if (new & SER_DTR)
		ns8250->mcr |= MCR_DTR;
	if (new & SER_RTS)
		ns8250->mcr |= MCR_RTS;
	uart_setreg(bas, REG_MCR, ns8250->mcr);
	uart_barrier(bas);
	uart_unlock(sc->sc_hwmtx);
#endif
	return (0);
}