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
union semun {struct semid_ds* buf; } ;
struct semid_ds {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_STAT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ child_count ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct semid_ds*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union semun) ; 
 int /*<<< orphan*/  sender_semid ; 
 int signal_was_sigchld ; 
 int FUNC7 (int*) ; 

void
FUNC8(int signo)
{
	union semun sun;
	struct semid_ds s_ds;
	int cstatus;

	/*
	 * Reap the child; if it exited successfully, then we're on the
	 * right track!
	 */
	if (FUNC7(&cstatus) == -1)
		FUNC2(1, "wait");

	if (FUNC1(cstatus) == 0)
		FUNC3(1, "receiver exited abnormally");

	if (FUNC0(cstatus) != 0)
		FUNC3(1, "receiver exited with status %d",
		    FUNC0(cstatus));

	/*
	 * If we get here, the child has exited normally, and we should
	 * decrement the child count.  If the child_count reaches 0, we
	 * should exit.
	 */

	sun.buf = &s_ds;
	if (FUNC6(sender_semid, 0, IPC_STAT, sun) == -1)
		FUNC2(1, "semctl IPC_STAT");

	FUNC5(&s_ds, 0600);

	if (--child_count != 0) {
		signal_was_sigchld = 1;
		return;
	}

	FUNC4(0);
}