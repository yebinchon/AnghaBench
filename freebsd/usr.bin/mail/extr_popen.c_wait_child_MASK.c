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
struct child {int /*<<< orphan*/  status; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct child*) ; 
 struct child* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait_status ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(pid_t pid)
{
	struct child *cp;
	sigset_t nset, oset;
	pid_t rv = 0;

	(void)FUNC5(&nset);
	(void)FUNC4(&nset, SIGCHLD);
	(void)FUNC6(SIG_BLOCK, &nset, &oset);
	/*
	 * If we have not already waited on the pid (via sigchild)
	 * wait on it now.  Otherwise, use the wait status stashed
	 * by sigchild.
	 */
	cp = FUNC3(pid, 1);
	if (cp == NULL || !cp->done)
		rv = FUNC7(pid, &wait_status, 0);
	else
		wait_status = cp->status;
	if (cp != NULL)
		FUNC2(cp);
	(void)FUNC6(SIG_SETMASK, &oset, NULL);
	if (rv == -1 || (FUNC1(wait_status) && FUNC0(wait_status)))
		return -1;
	else
		return 0;
}