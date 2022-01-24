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
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_DM_CR ; 
 int /*<<< orphan*/  UART_DM_IMR ; 
 int /*<<< orphan*/  UART_DM_RESET_STALE_INT ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;

	/*
	 * XXX: Turn off all interrupts to enter polling mode. Leave the
	 * saved mask alone. We'll restore whatever it was in ungrab.
	 */
	FUNC2(sc->sc_hwmtx);
	FUNC0(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);
	FUNC0(bas, UART_DM_IMR, 0);
	FUNC1(bas);
	FUNC3(sc->sc_hwmtx);
}