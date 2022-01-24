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
struct test {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int childproc ; 
 scalar_t__ childproc_running ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3(int asroot, int injail, struct test *test)
{
	pid_t pid;

	if (childproc_running) {
		(void)FUNC0(childproc, SIGKILL);
		while (1) {
			pid = FUNC1(childproc, NULL, 0);
			if (pid == -1)
				FUNC2("waitpid(%d (test), NULL, 0)",
				    childproc);
			if (pid == childproc)
				break;
		}
		childproc_running = 0;
		childproc = -1;
	}
}