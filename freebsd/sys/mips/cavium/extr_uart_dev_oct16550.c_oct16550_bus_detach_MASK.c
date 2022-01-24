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
struct uart_softc {struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (struct uart_softc *sc)
{
	struct uart_bas *bas;
	u_char ier;

	bas = &sc->sc_bas;
	ier = FUNC2(bas, REG_IER) & 0xf0;
	FUNC3(bas, REG_IER, ier);
	FUNC1(bas);
	FUNC0(bas);
	return (0);
}