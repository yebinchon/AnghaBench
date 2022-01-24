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
struct msqid_ds {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_STAT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ child_pid ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msqid_ds*) ; 
 int /*<<< orphan*/  FUNC6 (struct msqid_ds*,int) ; 
 int /*<<< orphan*/  sender_msqid ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

void
FUNC8(int signo)
{
	struct msqid_ds m_ds;
	int cstatus;

	/*
	 * Reap the child; if it exited successfully, then the test passed!
	 */
	if (FUNC7(child_pid, &cstatus, 0) != child_pid)
		FUNC2(1, "waitpid");

	if (FUNC1(cstatus) == 0)
		FUNC3(1, "receiver exited abnormally");

	if (FUNC0(cstatus) != 0)
		FUNC3(1, "receiver exited with status %d",
		    FUNC0(cstatus));

	/*
	 * If we get here, the child has exited normally, and thus
	 * we should exit normally too.  First, tho, we print out
	 * the final stats for the message queue.
	 */

	if (FUNC5(sender_msqid, IPC_STAT, &m_ds) == -1)
		FUNC2(1, "msgctl IPC_STAT");

	FUNC6(&m_ds, 0600);

	FUNC4(0);
}