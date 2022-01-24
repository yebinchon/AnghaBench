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
typedef  int u_int ;
struct uart_bas {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int IMXUART_UFCR_RFDIV_MASK ; 
 int IMXUART_UFCR_RFDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBIR ; 
 int /*<<< orphan*/  UBMR ; 
 int /*<<< orphan*/  UFCR ; 
 int const FUNC2 () ; 
 int FUNC3 (int const*) ; 

__attribute__((used)) static u_int
FUNC4(struct uart_bas *bas)
{
	uint32_t rate, ubir, ubmr;
	u_int baud, blo, bhi, i;
	static const u_int predivs[] = {6, 5, 4, 3, 2, 1, 7, 1};
	static const u_int std_rates[] = {
		9600, 14400, 19200, 38400, 57600, 115200, 230400, 460800, 921600
	};

	/*
	 * Get the baud rate the hardware is programmed for, then search the
	 * table of standard baud rates for a number that's within 3% of the
	 * actual rate the hardware is programmed for.  It's more comforting to
	 * see that your console is running at 115200 than 114942.  Note that
	 * here we cannot make a simplifying assumption that the predivider and
	 * numerator are 1 (like we do when setting the baud rate), because we
	 * don't know what u-boot might have set up.
	 */
	i = (FUNC0(bas, FUNC1(UFCR)) & IMXUART_UFCR_RFDIV_MASK) >>
	    IMXUART_UFCR_RFDIV_SHIFT;
	rate = FUNC2() / predivs[i];
	ubir = FUNC0(bas, FUNC1(UBIR)) + 1;
	ubmr = FUNC0(bas, FUNC1(UBMR)) + 1;
	baud = ((rate / 16 ) * ubir) / ubmr;

	blo = (baud * 100) / 103;
	bhi = (baud * 100) / 97;
	for (i = 0; i < FUNC3(std_rates); i++) {
		rate = std_rates[i];
		if (rate >= blo && rate <= bhi) {
			baud = rate;
			break;
		}
	}

	return (baud);
}