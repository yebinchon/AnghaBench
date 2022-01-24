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
struct uart_bas {int /*<<< orphan*/  rclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAB_BGR ; 
 int /*<<< orphan*/  SAB_CCR2 ; 
 int SAB_CCR2_BR8 ; 
 int SAB_CCR2_BR9 ; 
 int /*<<< orphan*/  SAB_DAFO ; 
 int SAB_DAFO_CHL_CS5 ; 
 int SAB_DAFO_CHL_CS6 ; 
 int SAB_DAFO_CHL_CS7 ; 
 int SAB_DAFO_CHL_CS8 ; 
 int SAB_DAFO_PAR_EVEN ; 
 int SAB_DAFO_PAR_MARK ; 
 int SAB_DAFO_PAR_NONE ; 
 int SAB_DAFO_PAR_ODD ; 
 int SAB_DAFO_PAR_SPACE ; 
 int SAB_DAFO_STOP ; 
 int /*<<< orphan*/  SAB_TCR ; 
#define  UART_PARITY_EVEN 132 
#define  UART_PARITY_MARK 131 
#define  UART_PARITY_NONE 130 
#define  UART_PARITY_ODD 129 
#define  UART_PARITY_SPACE 128 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	int divisor;
	uint8_t ccr2, dafo;

	if (databits >= 8)
		dafo = SAB_DAFO_CHL_CS8;
	else if (databits == 7)
		dafo = SAB_DAFO_CHL_CS7;
	else if (databits == 6)
		dafo = SAB_DAFO_CHL_CS6;
	else
		dafo = SAB_DAFO_CHL_CS5;
	if (stopbits > 1)
		dafo |= SAB_DAFO_STOP;
	switch (parity) {
	case UART_PARITY_EVEN:	dafo |= SAB_DAFO_PAR_EVEN; break;
	case UART_PARITY_MARK:	dafo |= SAB_DAFO_PAR_MARK; break;
	case UART_PARITY_NONE:	dafo |= SAB_DAFO_PAR_NONE; break;
	case UART_PARITY_ODD:	dafo |= SAB_DAFO_PAR_ODD; break;
	case UART_PARITY_SPACE:	dafo |= SAB_DAFO_PAR_SPACE; break;
	default:		return (EINVAL);
	}

	/* Set baudrate. */
	if (baudrate > 0) {
		divisor = FUNC0(bas->rclk, baudrate);
		if (divisor == 0)
			return (EINVAL);
		FUNC3(bas, SAB_BGR, divisor & 0xff);
		FUNC1(bas);
		/* Allow reading the (n-1,m) tuple from the chip. */
		FUNC3(bas, SAB_TCR, divisor & 0xff);
		FUNC1(bas);
		ccr2 = FUNC2(bas, SAB_CCR2);
		ccr2 &= ~(SAB_CCR2_BR9 | SAB_CCR2_BR8);
		ccr2 |= (divisor >> 2) & (SAB_CCR2_BR9 | SAB_CCR2_BR8);
		FUNC3(bas, SAB_CCR2, ccr2);
		FUNC1(bas);
	}

	FUNC3(bas, SAB_DAFO, dafo);
	FUNC1(bas);
	return (0);
}