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
typedef  int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_CMDR ; 
 int /*<<< orphan*/  SAB_CMDR_RFRD ; 
 int /*<<< orphan*/  SAB_ISR0 ; 
 int SAB_ISR0_CDSC ; 
 int SAB_ISR0_RFO ; 
 int SAB_ISR0_RPF ; 
 int SAB_ISR0_TCD ; 
 int SAB_ISR0_TIME ; 
 int /*<<< orphan*/  SAB_ISR1 ; 
 int SAB_ISR1_ALLS ; 
 int SAB_ISR1_BRKT ; 
 int SAB_ISR1_CSC ; 
 int /*<<< orphan*/  SAB_STAR ; 
 int SAB_STAR_CEC ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;
	uint8_t isr0, isr1;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	isr0 = FUNC1(bas, SAB_ISR0);
	isr1 = FUNC1(bas, SAB_ISR1);
	FUNC0(bas);
	if (isr0 & SAB_ISR0_TIME) {
		while (FUNC1(bas, SAB_STAR) & SAB_STAR_CEC)
			;
		FUNC3(bas, SAB_CMDR, SAB_CMDR_RFRD);
		FUNC0(bas);
	}
	FUNC4(sc->sc_hwmtx);

	ipend = 0;
	if (isr1 & SAB_ISR1_BRKT)
		ipend |= SER_INT_BREAK;
	if (isr0 & SAB_ISR0_RFO)
		ipend |= SER_INT_OVERRUN;
	if (isr0 & (SAB_ISR0_TCD|SAB_ISR0_RPF))
		ipend |= SER_INT_RXREADY;
	if ((isr0 & SAB_ISR0_CDSC) || (isr1 & SAB_ISR1_CSC))
		ipend |= SER_INT_SIGCHG;
	if (isr1 & SAB_ISR1_ALLS)
		ipend |= SER_INT_TXIDLE;

	return (ipend);
}