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
typedef  int u_char ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
	u_char ier;

	/*
	 * turn off all interrupts to enter polling mode. Leave the
	 * saved mask alone. We'll restore whatever it was in ungrab.
	 * All pending interrupt signals are reset when IER is set to 0.
	 */
	FUNC2(sc->sc_hwmtx);
	ier = FUNC1(bas, REG_IER);
	FUNC3(bas, REG_IER, ier & ns8250->ier_mask);
	FUNC0(bas);
	FUNC4(sc->sc_hwmtx);
}