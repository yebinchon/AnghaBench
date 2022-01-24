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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ALTERA_JTAG_UART_CONTROL_AC ; 
 int ALTERA_JTAG_UART_CONTROL_WSPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ aju_cons_jtag_missed ; 
 int aju_cons_jtag_present ; 
 int /*<<< orphan*/  altera_jtag_uart_ac_poll_delay ; 

__attribute__((used)) static void
FUNC5(char ch)
{
	uint32_t v;

	FUNC0();

	/*
	 * The flow control logic here is somewhat subtle: we want to wait for
	 * write buffer space only while JTAG is present.  However, we can't
	 * directly ask if JTAG is present -- just whether it's been seen
	 * since we last cleared the ALTERA_JTAG_UART_CONTROL_AC bit.  As
	 * such, implement a polling loop in which we both wait for space and
	 * try to decide whether JTAG has disappeared on us.  We will have to
	 * wait one complete polling delay to detect that JTAG has gone away,
	 * but otherwise shouldn't wait any further once it has gone.  And we
	 * had to wait for buffer space anyway, if it was there.
	 *
	 * If JTAG is spotted, reset the TTY-layer miss counter so console-
	 * layer clearing of the bit doesn't trigger a TTY-layer
	 * disconnection.
	 *
	 * XXXRW: Notice the inherent race with hardware: in clearing the
	 * bit, we may race with hardware setting the same bit.  This can
	 * cause real-world reliability problems due to lost output on the
	 * console.
	 */
	v = FUNC2();
	if (v & ALTERA_JTAG_UART_CONTROL_AC) {
		aju_cons_jtag_present = 1;
		aju_cons_jtag_missed = 0;
		v &= ~ALTERA_JTAG_UART_CONTROL_AC;
		FUNC3(v);
	}
	while ((v & ALTERA_JTAG_UART_CONTROL_WSPACE) == 0) {
		if (!aju_cons_jtag_present)
			return;
		FUNC1(altera_jtag_uart_ac_poll_delay);
		v = FUNC2();
		if (v & ALTERA_JTAG_UART_CONTROL_AC) {
			aju_cons_jtag_present = 1;
			v &= ~ALTERA_JTAG_UART_CONTROL_AC;
			FUNC3(v);
		} else
			aju_cons_jtag_present = 0;
	}
	FUNC4(ch);
}