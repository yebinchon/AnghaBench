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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  cur_vcpu ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * gdb_regset ; 
 int /*<<< orphan*/ * gdb_regsize ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
	uint64_t regvals[FUNC2(gdb_regset)];
	int i;

	if (FUNC5(ctx, cur_vcpu, FUNC2(gdb_regset),
	    gdb_regset, regvals) == -1) {
		FUNC3(errno);
		return;
	}
	FUNC4();
	for (i = 0; i < FUNC2(regvals); i++)
		FUNC0(regvals[i], gdb_regsize[i]);
	FUNC1();
}