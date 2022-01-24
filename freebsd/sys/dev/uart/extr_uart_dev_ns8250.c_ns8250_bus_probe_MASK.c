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
typedef  int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_sysdev; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FCR_ENABLE ; 
 int FCR_RCV_RST ; 
 int FCR_UART_ON ; 
 int FCR_XMT_RST ; 
 int IIR_FIFO_MASK ; 
 int LSR_OE ; 
 int LSR_TEMT ; 
 int MCR_DTR ; 
 int MCR_IE ; 
 int MCR_LOOPBACK ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_FCR ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_IIR ; 
 int /*<<< orphan*/  REG_LSR ; 
 int /*<<< orphan*/  REG_MCR ; 
 int UART_DRAIN_RECEIVER ; 
 int UART_DRAIN_TRANSMITTER ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_bas*) ; 
 int FUNC8 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

int
FUNC10(struct uart_softc *sc)
{
	struct ns8250_softc *ns8250;
	struct uart_bas *bas;
	int count, delay, error, limit;
	uint8_t lsr, mcr, ier;
	uint8_t val;

	ns8250 = (struct ns8250_softc *)sc;
	bas = &sc->sc_bas;

	error = FUNC6(bas);
	if (error)
		return (error);

	mcr = MCR_IE;
	if (sc->sc_sysdev == NULL) {
		/* By using ns8250_init() we also set DTR and RTS. */
		FUNC5(bas, 115200, 8, 1, UART_PARITY_NONE);
	} else
		mcr |= MCR_DTR | MCR_RTS;

	error = FUNC3(bas, UART_DRAIN_TRANSMITTER);
	if (error)
		return (error);

	/*
	 * Set loopback mode. This avoids having garbage on the wire and
	 * also allows us send and receive data. We set DTR and RTS to
	 * avoid the possibility that automatic flow-control prevents
	 * any data from being sent.
	 */
	FUNC9(bas, REG_MCR, MCR_LOOPBACK | MCR_IE | MCR_DTR | MCR_RTS);
	FUNC7(bas);

	/*
	 * Enable FIFOs. And check that the UART has them. If not, we're
	 * done. Since this is the first time we enable the FIFOs, we reset
	 * them.
	 */
	val = FCR_ENABLE;
#ifdef CPU_XBURST
	val |= FCR_UART_ON;
#endif
	FUNC9(bas, REG_FCR, val);
	FUNC7(bas);
	if (!(FUNC8(bas, REG_IIR) & IIR_FIFO_MASK)) {
		/*
		 * NS16450 or INS8250. We don't bother to differentiate
		 * between them. They're too old to be interesting.
		 */
		FUNC9(bas, REG_MCR, mcr);
		FUNC7(bas);
		sc->sc_rxfifosz = sc->sc_txfifosz = 1;
		FUNC1(sc->sc_dev, "8250 or 16450 or compatible");
		return (0);
	}

	val = FCR_ENABLE | FCR_XMT_RST | FCR_RCV_RST;
#ifdef CPU_XBURST
	val |= FCR_UART_ON;
#endif
	FUNC9(bas, REG_FCR, val);
	FUNC7(bas);

	count = 0;
	delay = FUNC2(bas);

	/* We have FIFOs. Drain the transmitter and receiver. */
	error = FUNC3(bas, UART_DRAIN_RECEIVER|UART_DRAIN_TRANSMITTER);
	if (error) {
		FUNC9(bas, REG_MCR, mcr);
		val = 0;
#ifdef CPU_XBURST
		val |= FCR_UART_ON;
#endif
		FUNC9(bas, REG_FCR, val);
		FUNC7(bas);
		goto describe;
	}

	/*
	 * We should have a sufficiently clean "pipe" to determine the
	 * size of the FIFOs. We send as much characters as is reasonable
	 * and wait for the overflow bit in the LSR register to be
	 * asserted, counting the characters as we send them. Based on
	 * that count we know the FIFO size.
	 */
	do {
		FUNC9(bas, REG_DATA, 0);
		FUNC7(bas);
		count++;

		limit = 30;
		lsr = 0;
		/*
		 * LSR bits are cleared upon read, so we must accumulate
		 * them to be able to test LSR_OE below.
		 */
		while (((lsr |= FUNC8(bas, REG_LSR)) & LSR_TEMT) == 0 &&
		    --limit)
			FUNC0(delay);
		if (limit == 0) {
			ier = FUNC8(bas, REG_IER) & ns8250->ier_mask;
			FUNC9(bas, REG_IER, ier);
			FUNC9(bas, REG_MCR, mcr);
			val = 0;
#ifdef CPU_XBURST
			val |= FCR_UART_ON;
#endif
			FUNC9(bas, REG_FCR, val);
			FUNC7(bas);
			count = 0;
			goto describe;
		}
	} while ((lsr & LSR_OE) == 0 && count < 260);
	count--;

	FUNC9(bas, REG_MCR, mcr);

	/* Reset FIFOs. */
	FUNC4(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

 describe:
	if (count >= 14 && count <= 16) {
		sc->sc_rxfifosz = 16;
		FUNC1(sc->sc_dev, "16550 or compatible");
	} else if (count >= 28 && count <= 32) {
		sc->sc_rxfifosz = 32;
		FUNC1(sc->sc_dev, "16650 or compatible");
	} else if (count >= 56 && count <= 64) {
		sc->sc_rxfifosz = 64;
		FUNC1(sc->sc_dev, "16750 or compatible");
	} else if (count >= 112 && count <= 128) {
		sc->sc_rxfifosz = 128;
		FUNC1(sc->sc_dev, "16950 or compatible");
	} else if (count >= 224 && count <= 256) {
		sc->sc_rxfifosz = 256;
		FUNC1(sc->sc_dev, "16x50 with 256 byte FIFO");
	} else {
		sc->sc_rxfifosz = 16;
		FUNC1(sc->sc_dev,
		    "Non-standard ns8250 class UART with FIFOs");
	}

	/*
	 * Force the Tx FIFO size to 16 bytes for now. We don't program the
	 * Tx trigger. Also, we assume that all data has been sent when the
	 * interrupt happens.
	 */
	sc->sc_txfifosz = 16;

#if 0
	/*
	 * XXX there are some issues related to hardware flow control and
	 * it's likely that uart(4) is the cause. This basically needs more
	 * investigation, but we avoid using for hardware flow control
	 * until then.
	 */
	/* 16650s or higher have automatic flow control. */
	if (sc->sc_rxfifosz > 16) {
		sc->sc_hwiflow = 1;
		sc->sc_hwoflow = 1;
	}
#endif

	return (0);
}