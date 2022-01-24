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
struct uart_softc {int sc_txdatasz; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_txbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 scalar_t__ SAB_CMDR ; 
 int /*<<< orphan*/  SAB_CMDR_XF ; 
 int /*<<< orphan*/  SAB_STAR ; 
 int SAB_STAR_CEC ; 
 int SAB_STAR_XFW ; 
 scalar_t__ SAB_XFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int i;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	while (!(FUNC1(bas, SAB_STAR) & SAB_STAR_XFW))
		;
	for (i = 0; i < sc->sc_txdatasz; i++)
		FUNC3(bas, SAB_XFIFO + i, sc->sc_txbuf[i]);
	FUNC0(bas);
	while (FUNC1(bas, SAB_STAR) & SAB_STAR_CEC)
		;
	FUNC3(bas, SAB_CMDR, SAB_CMDR_XF);
	sc->sc_txbusy = 1;
	FUNC4(sc->sc_hwmtx);
	return (0);
}