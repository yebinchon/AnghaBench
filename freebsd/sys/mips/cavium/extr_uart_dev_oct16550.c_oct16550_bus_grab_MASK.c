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
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;

	/*
	 * turn off all interrupts to enter polling mode. Leave the
	 * saved mask alone. We'll restore whatever it was in ungrab.
	 * All pending interupt signals are reset when IER is set to 0.
	 */
	FUNC1(sc->sc_hwmtx);
	FUNC2(bas, REG_IER, 0);
	FUNC0(bas);
	FUNC3(sc->sc_hwmtx);
}