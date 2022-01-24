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
typedef  int u_char ;
typedef  int /*<<< orphan*/  bktr_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int,int,int,int*,int*,int) ; 
 scalar_t__ MT2032_OPTIMIZE_VCO ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int MT2032_XOGC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(bktr_ptr_t bktr, int rfin, int if1, int if2, int from, int to)
{
	u_char          buf[21];
	int             lint_try, sel, lock = 0;

	if (FUNC2(rfin, if1, if2, from, to, &buf[0], &sel, MT2032_XOGC) == -1)
		return -1;

	FUNC5(bktr, 0);

	/* send only the relevant registers per Rev. 1.2 */
	FUNC4(0, buf[0x00]);
	FUNC4(1, buf[0x01]);
	FUNC4(2, buf[0x02]);

	FUNC4(5, buf[0x05]);
	FUNC4(6, buf[0x06]);
	FUNC4(7, buf[0x07]);

	FUNC4(11, buf[0x0B]);
	FUNC4(12, buf[0x0C]);

	/* wait for PLLs to lock (per manual), retry LINT if not. */
	for (lint_try = 0; lint_try < 2; lint_try++) {
		lock = FUNC1(bktr);

		if (MT2032_OPTIMIZE_VCO) {
			lock = FUNC3(bktr, sel, lock);
		}
		if (lock == 6) {
			break;
		}
		/* set LINT to re-init PLLs */
		FUNC4(7, 0x80 + 8 + MT2032_XOGC);
		FUNC0(10000);
		FUNC4(7, 8 + MT2032_XOGC);
	}
	if (lock != 6)
		FUNC7("%s: PLL didn't lock\n", FUNC6(bktr));

	FUNC4(2, 0x20);

	FUNC5(bktr, 1);
	return 0;
}