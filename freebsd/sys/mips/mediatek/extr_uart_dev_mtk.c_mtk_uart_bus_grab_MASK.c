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
struct uart_mtk_softc {int ier; int ier_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	struct uart_mtk_softc *usc = (struct uart_mtk_softc *)sc;

	FUNC2(sc->sc_hwmtx);
	usc->ier = FUNC1(bas, UART_IER_REG);
	FUNC3(bas, UART_IER_REG, usc->ier & usc->ier_mask);
	FUNC0(bas);
	FUNC4(sc->sc_hwmtx);
}