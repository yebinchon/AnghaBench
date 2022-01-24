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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  fpid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int,int*,int) ; 
 int FUNC6 (int,int*,int) ; 

__attribute__((used)) static void
FUNC7(int cpipe[2])
{
	pid_t fpid;

	FUNC2(cpipe[0]);

	/* Double-fork to disassociate from the debugger. */
	FUNC0((fpid = FUNC3()) != -1);
	if (fpid != 0)
		FUNC1(3);
	
	/* Send the pid of the disassociated child to the debugger. */
	fpid = FUNC4();
	FUNC0(FUNC6(cpipe[1], &fpid, sizeof(fpid)) == sizeof(fpid));

	/* Wait for the debugger to attach. */
	FUNC0(FUNC5(cpipe[1], &fpid, sizeof(fpid)) == 0);
}