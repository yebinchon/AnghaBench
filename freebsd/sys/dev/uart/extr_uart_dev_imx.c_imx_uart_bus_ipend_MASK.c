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

/* Variables and functions */
 int /*<<< orphan*/  AGTIM ; 
 int /*<<< orphan*/  ATEN ; 
 int /*<<< orphan*/  BKEN ; 
 int /*<<< orphan*/  BRCD ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RRDY ; 
 int /*<<< orphan*/  RRDYEN ; 
 int SER_INT_BREAK ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRDY ; 
 int /*<<< orphan*/  TRDYEN ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UCR4 ; 
 int /*<<< orphan*/  USR1 ; 
 int /*<<< orphan*/  USR2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;
	uint32_t usr1, usr2;
	uint32_t ucr1, ucr2, ucr4;

	bas = &sc->sc_bas;
	ipend = 0;

	FUNC5(sc->sc_hwmtx);

	/* Read pending interrupts */
	usr1 = FUNC2(bas, FUNC3(USR1));
	usr2 = FUNC2(bas, FUNC3(USR2));
	/* ACK interrupts */
	FUNC4(bas, FUNC3(USR1), usr1);
	FUNC4(bas, FUNC3(USR2), usr2);

	ucr1 = FUNC2(bas, FUNC3(UCR1));
	ucr2 = FUNC2(bas, FUNC3(UCR2));
	ucr4 = FUNC2(bas, FUNC3(UCR4));

	/* If we have reached tx low-water, we can tx some more now. */
	if ((usr1 & FUNC1(USR1, TRDY)) && (ucr1 & FUNC1(UCR1, TRDYEN))) {
		FUNC0(bas, UCR1, TRDYEN);
		ipend |= SER_INT_TXIDLE;
	}

	/*
	 * If we have reached the rx high-water, or if there are bytes in the rx
	 * fifo and no new data has arrived for 8 character periods (aging
	 * timer), we have input data to process.
	 */
	if (((usr1 & FUNC1(USR1, RRDY)) && (ucr1 & FUNC1(UCR1, RRDYEN))) || 
	    ((usr1 & FUNC1(USR1, AGTIM)) && (ucr2 & FUNC1(UCR2, ATEN)))) {
		FUNC0(bas, UCR1, RRDYEN);
		FUNC0(bas, UCR2, ATEN);
		ipend |= SER_INT_RXREADY;
	}

	/* A break can come in at any time, it never gets disabled. */
	if ((usr2 & FUNC1(USR2, BRCD)) && (ucr4 & FUNC1(UCR4, BKEN)))
		ipend |= SER_INT_BREAK;

	FUNC6(sc->sc_hwmtx);

	return (ipend);
}