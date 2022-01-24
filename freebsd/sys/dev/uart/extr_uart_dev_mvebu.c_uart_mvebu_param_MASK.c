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
struct uart_bas {int /*<<< orphan*/  rclk; } ;

/* Variables and functions */
 int CCR_BAUDRATE_DIV ; 
 int CTRL_LPBK_EN ; 
 int CTRL_PAR_EN ; 
 int CTRL_RX_FIFO_RST ; 
 int CTRL_ST_MIRR_EN ; 
 int CTRL_TWO_STOP ; 
 int CTRL_TX_FIFO_RST ; 
 int EINVAL ; 
 int /*<<< orphan*/  UART_CCR ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	uint32_t ctrl = 0;
	uint32_t ccr;
	int divisor, ret = 0;

	/* Reset UART */
	ctrl = FUNC1(bas, UART_CTRL);
	FUNC3(bas, UART_CTRL, ctrl | CTRL_TX_FIFO_RST | CTRL_RX_FIFO_RST |
	    CTRL_LPBK_EN);
	FUNC0(bas);

	switch (stopbits) {
	case 2:
		ctrl |= CTRL_TWO_STOP;
		break;
	case 1:
	default:
		ctrl &=~ CTRL_TWO_STOP;
	}

	switch (parity) {
	case 3: /* Even parity bit */
		ctrl |= CTRL_PAR_EN;
		break;
	default:
		ctrl &=~ CTRL_PAR_EN;
	}

	/* Set baudrate. */
	if (baudrate > 0) {
		divisor = FUNC2(bas->rclk, baudrate);
		if (divisor == 0) {
			ret = EINVAL;
		} else {
			ccr = FUNC1(bas, UART_CCR);
			ccr &=~CCR_BAUDRATE_DIV;

			FUNC3(bas, UART_CCR, ccr | divisor);
			FUNC0(bas);
		}
	}

	/* Set mirroring of status bits */
	ctrl |= CTRL_ST_MIRR_EN;

	FUNC3(bas, UART_CTRL, ctrl);
	FUNC0(bas);

	return (ret);
}