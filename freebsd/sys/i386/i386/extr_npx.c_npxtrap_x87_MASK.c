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
typedef  int u_short ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  fpcurthread ; 
 int* fpetable ; 
 int hw_float ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__,int) ; 

int
FUNC9(void)
{
	u_short control, status;

	if (!hw_float) {
		FUNC8(
	"npxtrap_x87: fpcurthread = %p, curthread = %p, hw_float = %d\n",
		       FUNC2(fpcurthread), curthread, hw_float);
		FUNC7("npxtrap from nowhere");
	}
	FUNC3();

	/*
	 * Interrupt handling (for another interrupt) may have pushed the
	 * state to memory.  Fetch the relevant parts of the state from
	 * wherever they are.
	 */
	if (FUNC2(fpcurthread) != curthread) {
		control = FUNC0(curthread);
		status = FUNC1(curthread);
	} else {
		FUNC5(&control);
		FUNC6(&status);
	}
	FUNC4();
	return (fpetable[status & ((~control & 0x3f) | 0x40)]);
}