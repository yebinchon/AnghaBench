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
typedef  int /*<<< orphan*/  uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR933X_UART_CS_HOST_INT_EN ; 
 int /*<<< orphan*/  AR933X_UART_CS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t reg;

	/* Disable the host interrupt now */
	FUNC2(sc->sc_hwmtx);
	reg = FUNC0(bas, AR933X_UART_CS_REG);
	reg &= ~AR933X_UART_CS_HOST_INT_EN;
	FUNC1(bas, AR933X_UART_CS_REG, reg);
	FUNC3(sc->sc_hwmtx);
}