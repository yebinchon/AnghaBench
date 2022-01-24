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
struct rusage {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int*,int /*<<< orphan*/ ,struct rusage*) ; 

__attribute__((used)) static void
FUNC3(FILE *io, pid_t the_pid)
{
	int pstat;
	pid_t pid;

	/*
	 * Find the appropriate file pointer and remove it from the list.
	 */
	(void)FUNC0(io);
	/* Die if you are not dead! */
	FUNC1(the_pid, SIGTERM);
	do {
		pid = FUNC2(the_pid, &pstat, 0, (struct rusage *)0);
	} while (pid == -1 && errno == EINTR);
}