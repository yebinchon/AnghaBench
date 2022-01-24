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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int CTRL_RX_FIFO_RST ; 
 int CTRL_TX_FIFO_RST ; 
 int EINVAL ; 
 int /*<<< orphan*/  UART_CTRL ; 
#define  UART_FLUSH_RECEIVER 129 
#define  UART_FLUSH_TRANSMITTER 128 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc, int what)
{
	struct uart_bas *bas;
	int ctrl, ret = 0;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	ctrl = FUNC1(bas, UART_CTRL);

	switch (what) {
	case UART_FLUSH_RECEIVER:
		FUNC3(bas, UART_CTRL, ctrl | CTRL_RX_FIFO_RST);
		FUNC0(bas);
		break;

	case UART_FLUSH_TRANSMITTER:
		FUNC3(bas, UART_CTRL, ctrl | CTRL_TX_FIFO_RST);
		FUNC0(bas);
		break;

	default:
		ret = EINVAL;
		break;
	}

	/* Back to normal operation */
	if (!ret) {
		FUNC3(bas, UART_CTRL, ctrl);
		FUNC0(bas);
	}

	FUNC4(sc->sc_hwmtx);
	return (ret);
}