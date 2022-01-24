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
struct uart_softc {struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_CCR0 ; 
 int /*<<< orphan*/  SAB_IMR0 ; 
 int /*<<< orphan*/  SAB_IMR1 ; 
 int /*<<< orphan*/  SAB_ISR0 ; 
 int /*<<< orphan*/  SAB_ISR1 ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc)
{
	struct uart_bas *bas;

	bas = &sc->sc_bas;
	FUNC2(bas, SAB_IMR0, 0xff);
	FUNC2(bas, SAB_IMR1, 0xff);
	FUNC0(bas);
	FUNC1(bas, SAB_ISR0);
	FUNC1(bas, SAB_ISR1);
	FUNC0(bas);
	FUNC2(bas, SAB_CCR0, 0);
	FUNC0(bas);
	return (0);
}