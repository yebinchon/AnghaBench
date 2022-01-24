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
typedef  int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct uart_bas*,int) ; 
 scalar_t__ FUNC2 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_softc*,char volatile) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	volatile char *buf;
	uint16_t st, rb;

	bas = &sc->sc_bas;
	FUNC4(sc->sc_hwmtx);
	rb = FUNC1(bas, FUNC0(bas->chan - 1));
	st = FUNC1(bas, rb);
	buf = (void *)(uintptr_t)FUNC2(bas, rb + 4);
	FUNC5(sc, *buf);
	FUNC3(bas, rb, st | 0x9000);
	FUNC6(sc->sc_hwmtx);
	return (0);
}