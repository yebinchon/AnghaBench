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
 int IIR_BUSY ; 
 int IIR_IMASK ; 
 int IIR_MLSC ; 
 int IIR_NOPEND ; 
 int IIR_RLS ; 
 int IIR_RXRDY ; 
 int IIR_RXTOUT ; 
 int IIR_TXRDY ; 
 int LSR_BI ; 
 int LSR_OE ; 
 int LSR_RXRDY ; 
 int /*<<< orphan*/  REG_IIR ; 
 int /*<<< orphan*/  REG_LSR ; 
 int /*<<< orphan*/  REG_USR ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend = 0;
	uint8_t iir, lsr;

	bas = &sc->sc_bas;
	FUNC1(sc->sc_hwmtx);

	iir = FUNC0(bas, REG_IIR) & IIR_IMASK;
	if (iir != IIR_NOPEND) {

            	if (iir == IIR_RLS) {
                    	lsr = FUNC0(bas, REG_LSR);
                        if (lsr & LSR_OE)
                            	ipend |= SER_INT_OVERRUN;
                        if (lsr & LSR_BI)
                            	ipend |= SER_INT_BREAK;
                        if (lsr & LSR_RXRDY)
                    		ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_RXRDY) {
                    	ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_RXTOUT) {
                    	ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_TXRDY) {
                    	ipend |= SER_INT_TXIDLE;

                } else if (iir == IIR_MLSC) {
                    	ipend |= SER_INT_SIGCHG;

                } else if (iir == IIR_BUSY) {
                    	(void) FUNC0(bas, REG_USR);
                }
	}
	FUNC2(sc->sc_hwmtx);

	return (ipend);
}