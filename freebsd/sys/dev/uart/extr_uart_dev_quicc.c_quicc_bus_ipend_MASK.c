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
typedef  int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;
	uint16_t scce;

	bas = &sc->sc_bas;
	ipend = 0;

	FUNC3(sc->sc_hwmtx);
	scce = FUNC1(bas, FUNC0(bas->chan - 1));
	FUNC2(bas, FUNC0(bas->chan - 1), ~0);
	FUNC4(sc->sc_hwmtx);
	if (scce & 0x0001)
		ipend |= SER_INT_RXREADY;
	if (scce & 0x0002)
		ipend |= SER_INT_TXIDLE;
	if (scce & 0x0004)
		ipend |= SER_INT_OVERRUN;
	if (scce & 0x0020)
		ipend |= SER_INT_BREAK;
	/* XXX SIGNALS */
	return (ipend);
}