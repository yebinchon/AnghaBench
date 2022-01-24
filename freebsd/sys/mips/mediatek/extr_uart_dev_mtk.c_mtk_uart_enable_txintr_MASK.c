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
typedef  int /*<<< orphan*/  uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER_ETBEI ; 
 int /*<<< orphan*/  UART_IER_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	uint8_t cr;

	cr = FUNC1(bas, UART_IER_REG);
	cr |= UART_IER_ETBEI;
	FUNC2(bas, UART_IER_REG, cr);
	FUNC0(bas);
}