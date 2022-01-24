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
 int CTRL_INTR_MASK ; 
 int CTRL_IPEND_MASK ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ctrl;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	ctrl = FUNC1(bas, UART_CTRL);

	/* Enable interrupts */
	ctrl &=~ CTRL_INTR_MASK;
	ctrl |= CTRL_IPEND_MASK;

	/* Set interrupts */
	FUNC3(bas, UART_CTRL, ctrl);
	FUNC0(bas);

	FUNC4(sc->sc_hwmtx);

	return (0);
}