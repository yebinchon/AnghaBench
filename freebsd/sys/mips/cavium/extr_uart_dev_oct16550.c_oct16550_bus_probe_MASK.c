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
struct uart_bas {int /*<<< orphan*/  rclk; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int /*<<< orphan*/  sc_dev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {int /*<<< orphan*/  uc_rclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CLOCK_SCLK ; 
 int FCR_ENABLE ; 
 int FCR_RCV_RST ; 
 int FCR_XMT_RST ; 
 int MCR_DTR ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_FCR ; 
 int /*<<< orphan*/  REG_MCR ; 
 int /*<<< orphan*/  UART_DRAIN_TRANSMITTER ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int) ; 
 int FUNC5 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_bas*) ; 
 TYPE_1__ uart_oct16550_class ; 
 int /*<<< orphan*/  FUNC7 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8 (struct uart_softc *sc)
{
	struct uart_bas *bas;
	int error;

	bas = &sc->sc_bas;
	bas->rclk = uart_oct16550_class.uc_rclk = FUNC0(CVMX_CLOCK_SCLK);

	error = FUNC5(bas);
	if (error) {
		return (error);
        }

	FUNC7(bas, REG_MCR, (MCR_DTR | MCR_RTS));

	/*
	 * Enable FIFOs. And check that the UART has them. If not, we're
	 * done. Since this is the first time we enable the FIFOs, we reset
	 * them.
	 */
        FUNC3(bas, UART_DRAIN_TRANSMITTER);
#define ENABLE_OCTEON_FIFO 1
#ifdef ENABLE_OCTEON_FIFO
	FUNC7(bas, REG_FCR, FCR_ENABLE | FCR_XMT_RST | FCR_RCV_RST);
#endif
	FUNC6(bas);

	FUNC4(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

        if (FUNC1(sc->sc_dev)) {
            	FUNC2(sc->sc_dev, "Octeon-16550 channel 1");
        } else {
            	FUNC2(sc->sc_dev, "Octeon-16550 channel 0");
        }
#ifdef ENABLE_OCTEON_FIFO
	sc->sc_rxfifosz = 64;
	sc->sc_txfifosz = 64;
#else
	sc->sc_rxfifosz = 1;
	sc->sc_txfifosz = 1;
#endif


#if 0
	/*
	 * XXX there are some issues related to hardware flow control and
	 * it's likely that uart(4) is the cause. This basicly needs more
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