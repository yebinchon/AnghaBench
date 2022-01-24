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
struct uart_softc {int sc_rxfifosz; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct oct16550_softc {int /*<<< orphan*/  fcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_FCR ; 
 int FUNC0 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct uart_softc *sc, int what)
{
	struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
	struct uart_bas *bas;
	int error;

	bas = &sc->sc_bas;
	FUNC3(sc->sc_hwmtx);
	if (sc->sc_rxfifosz > 1) {
		FUNC1(bas, what);
		FUNC4(bas, REG_FCR, oct16550->fcr);
		FUNC2(bas);
		error = 0;
	} else
		error = FUNC0(bas, what);
	FUNC5(sc->sc_hwmtx);
	return (error);
}