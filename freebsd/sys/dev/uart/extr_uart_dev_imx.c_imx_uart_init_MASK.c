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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int IMXUART_UFCR_RFDIV_DIV1 ; 
 int IMXUART_UFCR_RFDIV_MASK ; 
 int IMXUART_UFCR_RXTL_MASK ; 
 int IMXUART_UFCR_RXTL_SHIFT ; 
 int IMXUART_UFCR_TXTL_MASK ; 
 int IMXUART_UFCR_TXTL_SHIFT ; 
 int IMX_FIFOSZ ; 
 int IMX_RXFIFO_LEVEL ; 
 int IMX_TXFIFO_LEVEL ; 
 int /*<<< orphan*/  PREN ; 
 int /*<<< orphan*/  PROE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXEN ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STPB ; 
 int /*<<< orphan*/  TXEN ; 
 int /*<<< orphan*/  UARTEN ; 
#define  UART_PARITY_EVEN 132 
#define  UART_PARITY_MARK 131 
#define  UART_PARITY_NONE 130 
#define  UART_PARITY_ODD 129 
#define  UART_PARITY_SPACE 128 
 int /*<<< orphan*/  UBIR ; 
 int /*<<< orphan*/  UBMR ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UFCR ; 
 int /*<<< orphan*/  WS ; 
 int FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct uart_bas *bas, int baudrate, int databits, 
    int stopbits, int parity)
{
	uint32_t baseclk, reg;

        /* Enable the device and the RX/TX channels. */
	FUNC5(bas, FUNC4(UCR1), FUNC2(UCR1, UARTEN));
	FUNC5(bas, FUNC4(UCR2), FUNC2(UCR2, RXEN) | FUNC2(UCR2, TXEN));

	if (databits == 7)
		FUNC0(bas, UCR2, WS);
	else
		FUNC1(bas, UCR2, WS);

	if (stopbits == 2)
		FUNC1(bas, UCR2, STPB);
	else
		FUNC0(bas, UCR2, STPB);

	switch (parity) {
	case UART_PARITY_ODD:
		FUNC0(bas, UCR2, PROE);
		FUNC1(bas, UCR2, PREN);
		break;
	case UART_PARITY_EVEN:
		FUNC1(bas, UCR2, PROE);
		FUNC1(bas, UCR2, PREN);
		break;
	case UART_PARITY_MARK:
	case UART_PARITY_SPACE:
                /* FALLTHROUGH: Hardware doesn't support mark/space. */
	case UART_PARITY_NONE:
	default:
		FUNC0(bas, UCR2, PREN);
		break;
	}

	/*
	 * The hardware has an extremely flexible baud clock: it allows setting
	 * both the numerator and denominator of the divider, as well as a
	 * separate pre-divider.  We simplify the problem of coming up with a
	 * workable pair of numbers by assuming a pre-divider and numerator of
	 * one because our base clock is so fast we can reach virtually any
	 * reasonable speed with a simple divisor.  The numerator value actually
	 * includes the 16x over-sampling (so a value of 16 means divide by 1);
	 * the register value is the numerator-1, so we have a hard-coded 15.
	 * Note that a quirk of the hardware requires that both UBIR and UBMR be
	 * set back to back in order for the change to take effect.
	 */
	if (baudrate > 0) {
		baseclk = FUNC7();
		reg = FUNC3(bas, FUNC4(UFCR));
		reg = (reg & ~IMXUART_UFCR_RFDIV_MASK) | IMXUART_UFCR_RFDIV_DIV1;
		FUNC6(bas, FUNC4(UFCR), reg);
		FUNC6(bas, FUNC4(UBIR), 15);
		FUNC6(bas, FUNC4(UBMR), (baseclk / baudrate) - 1);
	}

	/*
	 * Program the tx lowater and rx hiwater levels at which fifo-service
	 * interrupts are signaled.  The tx value is interpetted as "when there
	 * are only this many bytes remaining" (not "this many free").
	 */
	reg = FUNC3(bas, FUNC4(UFCR));
	reg &= ~(IMXUART_UFCR_TXTL_MASK | IMXUART_UFCR_RXTL_MASK);
	reg |= (IMX_FIFOSZ - IMX_TXFIFO_LEVEL) << IMXUART_UFCR_TXTL_SHIFT;
	reg |= IMX_RXFIFO_LEVEL << IMXUART_UFCR_RXTL_SHIFT;
	FUNC6(bas, FUNC4(UFCR), reg);
}