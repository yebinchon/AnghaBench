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
 int ALTERA_JTAG_UART_DATA_DATA ; 
 int ALTERA_JTAG_UART_DATA_RVALID ; 
 int aju_cons_buffer_data ; 
 int aju_cons_buffer_valid ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void)
{
	uint32_t v;

	FUNC0();

	if (aju_cons_buffer_valid)
		return (1);
	v = FUNC1();
	if ((v & ALTERA_JTAG_UART_DATA_RVALID) != 0) {
		aju_cons_buffer_valid = 1;
		aju_cons_buffer_data = (v & ALTERA_JTAG_UART_DATA_DATA);
		return (1);
	}
	return (0);
}