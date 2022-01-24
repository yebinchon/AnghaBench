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
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int /*<<< orphan*/  parity; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACIEN ; 
 int /*<<< orphan*/  ADEN ; 
 int /*<<< orphan*/  AIRINTEN ; 
 int /*<<< orphan*/  ATEN ; 
 int /*<<< orphan*/  AWAKEN ; 
 int /*<<< orphan*/  BKEN ; 
 int /*<<< orphan*/  DCD ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DREN ; 
 int /*<<< orphan*/  DTRDEN ; 
 int /*<<< orphan*/  DTREN ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENIRI ; 
 int /*<<< orphan*/  ESCI ; 
 int /*<<< orphan*/  FRAERREN ; 
 int /*<<< orphan*/  IDEN ; 
 int /*<<< orphan*/  IRTS ; 
 int /*<<< orphan*/  OREN ; 
 int /*<<< orphan*/  PARERREN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RI ; 
 int /*<<< orphan*/  RRDYEN ; 
 int /*<<< orphan*/  RTSDEN ; 
 int /*<<< orphan*/  RTSEN ; 
 int /*<<< orphan*/  RXDMUXSEL ; 
 int /*<<< orphan*/  RXDSEN ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCEN ; 
 int /*<<< orphan*/  TRDYEN ; 
 int /*<<< orphan*/  TXMPTYEN ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UCR3 ; 
 int /*<<< orphan*/  UCR4 ; 
 int /*<<< orphan*/  USR1 ; 
 int /*<<< orphan*/  USR2 ; 
 int /*<<< orphan*/  WKEN ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	struct uart_devinfo *di;

	bas = &sc->sc_bas;
	if (sc->sc_sysdev != NULL) {
		di = sc->sc_sysdev;
		FUNC5(bas, di->baudrate, di->databits, di->stopbits,
		    di->parity);
	} else {
		FUNC5(bas, 115200, 8, 1, 0);
	}

	(void)FUNC4(sc);

	/* Clear all pending interrupts. */
	FUNC3(bas, FUNC2(USR1), 0xffff);
	FUNC3(bas, FUNC2(USR2), 0xffff);

	FUNC0(bas, UCR4, DREN);
	FUNC1(bas, UCR1, RRDYEN);
	FUNC0(bas, UCR1, IDEN);
	FUNC0(bas, UCR3, RXDSEN);
	FUNC1(bas, UCR2, ATEN);
	FUNC0(bas, UCR1, TXMPTYEN);
	FUNC0(bas, UCR1, TRDYEN);
	FUNC0(bas, UCR4, TCEN);
	FUNC0(bas, UCR4, OREN);
	FUNC1(bas, UCR4, BKEN);
	FUNC0(bas, UCR4, WKEN);
	FUNC0(bas, UCR1, ADEN);
	FUNC0(bas, UCR3, ACIEN);
	FUNC0(bas, UCR2, ESCI);
	FUNC0(bas, UCR4, ENIRI);
	FUNC0(bas, UCR3, AIRINTEN);
	FUNC0(bas, UCR3, AWAKEN);
	FUNC0(bas, UCR3, FRAERREN);
	FUNC0(bas, UCR3, PARERREN);
	FUNC0(bas, UCR1, RTSDEN);
	FUNC0(bas, UCR2, RTSEN);
	FUNC0(bas, UCR3, DTREN);
	FUNC0(bas, UCR3, RI);
	FUNC0(bas, UCR3, DCD);
	FUNC0(bas, UCR3, DTRDEN);
	FUNC1(bas, UCR2, IRTS);
	FUNC1(bas, UCR3, RXDMUXSEL);

	return (0);
}