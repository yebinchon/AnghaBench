#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int reg_array_size; scalar_t__ extended_regs; } ;

/* Variables and functions */
 int EOF ; 
 int UCHAR_MAX ; 
 TYPE_1__ bmachine ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(void)
{
	int ch1, ch2, idx;

	idx = FUNC0();
	if (idx == 0xff && bmachine.extended_regs) {
		ch1 = FUNC0();
		ch2 = FUNC0();
		if (ch1 == EOF || ch2 == EOF) {
			FUNC1("unexpected eof");
			idx = -1;
		} else
			idx = (ch1 << 8) + ch2 + UCHAR_MAX + 1;
	}
	if (idx < 0 || (unsigned)idx >= bmachine.reg_array_size) {
		FUNC1("internal error: reg num = %d", idx);
		idx = -1;
	}
	return (idx);
}