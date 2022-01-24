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
struct uart_softc {char* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct uart_bas*,int) ; 
 scalar_t__ FUNC2 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	volatile char *buf;
	struct uart_bas *bas;
	uint16_t st, tb;

	bas = &sc->sc_bas;
	FUNC4(sc->sc_hwmtx);
	tb = FUNC1(bas, FUNC0(bas->chan - 1));
	st = FUNC1(bas, tb);
	buf = (void *)(uintptr_t)FUNC2(bas, tb + 4);
	*buf = sc->sc_txbuf[0];
	FUNC3(bas, tb + 2, 1);
	FUNC3(bas, tb, st | 0x9000);
	sc->sc_txbusy = 1;
	FUNC5(sc->sc_hwmtx);
	return (0);
}