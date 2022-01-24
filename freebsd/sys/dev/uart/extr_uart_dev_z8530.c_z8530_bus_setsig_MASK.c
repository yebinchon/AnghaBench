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
struct z8530_softc {int /*<<< orphan*/  tpc; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  TPC_DTR ; 
 int /*<<< orphan*/  TPC_RTS ; 
 int /*<<< orphan*/  WR_TPC ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc, int sig)
{
	struct z8530_softc *z8530 = (struct z8530_softc*)sc;
	struct uart_bas *bas;
	uint32_t new, old;

	bas = &sc->sc_bas;
	do {
		old = sc->sc_hwsig;
		new = old;
		if (sig & SER_DDTR) {
			FUNC0(sig & SER_DTR, new, SER_DTR,
			    SER_DDTR);
		}
		if (sig & SER_DRTS) {
			FUNC0(sig & SER_RTS, new, SER_RTS,
			    SER_DRTS);
		}
	} while (!FUNC1(&sc->sc_hwsig, old, new));

	FUNC3(sc->sc_hwmtx);
	if (new & SER_DTR)
		z8530->tpc |= TPC_DTR;
	else
		z8530->tpc &= ~TPC_DTR;
	if (new & SER_RTS)
		z8530->tpc |= TPC_RTS;
	else
		z8530->tpc &= ~TPC_RTS;
	FUNC4(bas, WR_TPC, z8530->tpc);
	FUNC2(bas);
	FUNC5(sc->sc_hwmtx);
	return (0);
}