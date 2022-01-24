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
struct z8530_softc {int tpc; int txidle; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int /*<<< orphan*/  parity; int /*<<< orphan*/  stopbits; int /*<<< orphan*/  databits; int /*<<< orphan*/  baudrate; } ;

/* Variables and functions */
 int IC_BRK ; 
 int IC_CTS ; 
 int IC_DCD ; 
 int IDT_RIA ; 
 int IDT_TIE ; 
 int IDT_XIE ; 
 int MIC_MIE ; 
 int MIC_NV ; 
 int TPC_DTR ; 
 int TPC_RTS ; 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 int /*<<< orphan*/  WR_IC ; 
 int /*<<< orphan*/  WR_IDT ; 
 int /*<<< orphan*/  WR_IV ; 
 int /*<<< orphan*/  WR_MIC ; 
 int /*<<< orphan*/  WR_TPC ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct uart_bas*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct z8530_softc *z8530 = (struct z8530_softc*)sc;
	struct uart_bas *bas;
	struct uart_devinfo *di;

	bas = &sc->sc_bas;
	if (sc->sc_sysdev != NULL) {
		di = sc->sc_sysdev;
		z8530->tpc = TPC_DTR|TPC_RTS;
		FUNC3(bas, di->baudrate, di->databits, di->stopbits,
		    di->parity, &z8530->tpc);
	} else {
		z8530->tpc = FUNC4(bas, 9600, 8, 1, UART_PARITY_NONE);
		z8530->tpc &= ~(TPC_DTR|TPC_RTS);
	}
	z8530->txidle = 1;	/* Report SER_INT_TXIDLE. */

	(void)FUNC2(sc);

	FUNC1(bas, WR_IC, IC_BRK | IC_CTS | IC_DCD);
	FUNC0(bas);
	FUNC1(bas, WR_IDT, IDT_XIE | IDT_TIE | IDT_RIA);
	FUNC0(bas);
	FUNC1(bas, WR_IV, 0);
	FUNC0(bas);
	FUNC1(bas, WR_TPC, z8530->tpc);
	FUNC0(bas);
	FUNC1(bas, WR_MIC, MIC_NV | MIC_MIE);
	FUNC0(bas);
	return (0);
}