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
struct child {int free; scalar_t__ done; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (struct child*) ; 
 struct child* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(pid_t pid)
{
	struct child *cp;
	sigset_t nset, oset;

	(void)FUNC3(&nset);
	(void)FUNC2(&nset, SIGCHLD);
	(void)FUNC4(SIG_BLOCK, &nset, &oset);
	if ((cp = FUNC1(pid, 0)) != NULL) {
		if (cp->done)
			FUNC0(cp);
		else
			cp->free = 1;
	}
	(void)FUNC4(SIG_SETMASK, &oset, NULL);
}