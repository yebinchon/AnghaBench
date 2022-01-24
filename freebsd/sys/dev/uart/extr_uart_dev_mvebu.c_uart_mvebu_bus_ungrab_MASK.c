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
typedef  int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mvebu_softc {int intrm; } ;

/* Variables and functions */
 int CTRL_INTR_MASK ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct uart_softc *sc)
{
	struct uart_mvebu_softc *msc = (struct uart_mvebu_softc *)sc;
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t ctrl;

	/* Restore interrupts */
	FUNC2(sc->sc_hwmtx);
	ctrl = FUNC1(bas, UART_CTRL) & ~CTRL_INTR_MASK;
	FUNC3(bas, UART_CTRL, ctrl | msc->intrm);
	FUNC0(bas);
	FUNC4(sc->sc_hwmtx);
}