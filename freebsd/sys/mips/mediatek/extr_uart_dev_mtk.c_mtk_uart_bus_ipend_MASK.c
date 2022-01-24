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
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_SIGCHG ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  UART_FLUSH_RECEIVER ; 
#define  UART_IIR_ID_DR 132 
#define  UART_IIR_ID_DR2 131 
#define  UART_IIR_ID_LINESTATUS 130 
#define  UART_IIR_ID_MST 129 
#define  UART_IIR_ID_THRE 128 
 int UART_IIR_INTP ; 
 int /*<<< orphan*/  UART_IIR_REG ; 
 int UART_LSR_BI ; 
 int UART_LSR_OE ; 
 int /*<<< orphan*/  UART_LSR_REG ; 
 int /*<<< orphan*/  UART_MSR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;
	uint8_t iir, lsr, msr;

//	breakpoint();

	bas = &sc->sc_bas;
	ipend = 0;

	FUNC2(sc->sc_hwmtx);
	iir = FUNC1(&sc->sc_bas, UART_IIR_REG);
	lsr = FUNC1(&sc->sc_bas, UART_LSR_REG);
	FUNC3(&sc->sc_bas, UART_LSR_REG, lsr);
	msr = FUNC1(&sc->sc_bas, UART_MSR_REG);
	FUNC3(&sc->sc_bas, UART_MSR_REG, msr);
	if (iir & UART_IIR_INTP) {
		FUNC4(sc->sc_hwmtx);
		return (0);
	}
	switch ((iir >> 1) & 0x07) {
	case UART_IIR_ID_THRE:
		ipend |= SER_INT_TXIDLE;
		break;
	case UART_IIR_ID_DR2:
		FUNC0(sc, UART_FLUSH_RECEIVER);
		/* passthrough */
	case UART_IIR_ID_DR:
		ipend |= SER_INT_RXREADY;
		break;
	case UART_IIR_ID_MST:
	case UART_IIR_ID_LINESTATUS:
		ipend |= SER_INT_SIGCHG;
		if (lsr & UART_LSR_BI)
			ipend |= SER_INT_BREAK;
		if (lsr & UART_LSR_OE)
			ipend |= SER_INT_OVERRUN;
		break;
	default:
		/* XXX: maybe return error here */
		break;
	}

	FUNC4(sc->sc_hwmtx);

	return (ipend);
}