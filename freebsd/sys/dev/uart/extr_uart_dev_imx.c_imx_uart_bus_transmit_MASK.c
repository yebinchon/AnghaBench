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
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRDYEN ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UTXD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	int i;

	bas = &sc->sc_bas;
	FUNC3(sc->sc_hwmtx);

	/*
	 * Fill the tx fifo.  The uart core puts at most IMX_TXFIFO_LEVEL bytes
	 * into the txbuf (because that's what sc_txfifosz is set to), and
	 * because we got the TRDY (low-water reached) interrupt we know at
	 * least that much space is available in the fifo.
	 */
	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC2(bas, FUNC1(UTXD), sc->sc_txbuf[i] & 0xff);
	}
	sc->sc_txbusy = 1;
	FUNC0(bas, UCR1, TRDYEN);

	FUNC4(sc->sc_hwmtx);

	return (0);
}