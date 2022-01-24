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
 int LCR_5BITS ; 
 int LCR_6BITS ; 
 int LCR_7BITS ; 
 int LCR_8BITS ; 
 int LCR_DLAB ; 
 int LCR_STOPB ; 
 int /*<<< orphan*/  REG_DLH ; 
 int /*<<< orphan*/  REG_DLL ; 
 int /*<<< orphan*/  REG_LCR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	int divisor;
	uint8_t lcr;

	lcr = 0;
	if (databits >= 8)
		lcr |= LCR_8BITS;
	else if (databits == 7)
		lcr |= LCR_7BITS;
	else if (databits == 6)
		lcr |= LCR_6BITS;
	else
		lcr |= LCR_5BITS;
	if (stopbits > 1)
		lcr |= LCR_STOPB;
	lcr |= parity << 3;

	/* Set baudrate. */
	if (baudrate > 0) {
		divisor = FUNC0(bas->rclk, baudrate);
		if (divisor == 0)
			return (EINVAL);
		FUNC2(bas, REG_LCR, lcr | LCR_DLAB);
		FUNC1(bas);
		FUNC2(bas, REG_DLL, divisor & 0xff);
		FUNC2(bas, REG_DLH, (divisor >> 8) & 0xff);
		FUNC1(bas);
	}

	/* Set LCR and clear DLAB. */
	FUNC2(bas, REG_LCR, lcr);
	FUNC1(bas);
	return (0);
}