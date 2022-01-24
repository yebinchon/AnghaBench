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
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/ * sc_rxbuf; scalar_t__ sc_opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  SER_INT_RXREADY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_FLUSH_RECEIVER ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*) ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 scalar_t__ FUNC2 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC4(void *arg)
{
	struct uart_softc *sc = arg;

	if (sc->sc_opened) {
		FUNC1(sc);
		if (FUNC2(sc, UART_STAT_OVERRUN))
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
		FUNC3(sc, SER_INT_RXREADY);
	}
	FUNC0(sc, UART_FLUSH_RECEIVER);
	return (0);
}