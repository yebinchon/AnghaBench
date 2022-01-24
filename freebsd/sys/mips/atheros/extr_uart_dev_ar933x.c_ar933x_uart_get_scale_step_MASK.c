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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct uart_bas {int rclk; } ;

/* Variables and functions */
 unsigned int AR933X_UART_MAX_SCALE ; 
 int AR933X_UART_MAX_STEP ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,unsigned int,int) ; 

__attribute__((used)) static void
FUNC2(struct uart_bas *bas, unsigned int baud,
    unsigned int *scale, unsigned int *step)
{
	unsigned int tscale;
	uint32_t clk;
	long min_diff;

	clk = bas->rclk;
	*scale = 0;
	*step = 0;

	min_diff = baud;
	for (tscale = 0; tscale < AR933X_UART_MAX_SCALE; tscale++) {
		uint64_t tstep;
		int diff;

		tstep = baud * (tscale + 1);
		tstep *= (2 << 16);
		tstep = tstep / clk;

		if (tstep > AR933X_UART_MAX_STEP)
			break;

		diff = FUNC0(FUNC1(clk, tscale, tstep) - baud);
		if (diff < min_diff) {
			min_diff = diff;
			*scale = tscale;
			*step = tstep;
		}
	}
}