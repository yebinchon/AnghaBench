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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int NSIG ; 
 int SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(sigset_t *nset, int infd, int outfd)
{
	int i;
	sigset_t eset;

	/*
	 * All file descriptors other than 0, 1, and 2 are supposed to be
	 * close-on-exec.
	 */
	if (infd >= 0)
		FUNC0(infd, 0);
	if (outfd >= 0)
		FUNC0(outfd, 1);
	for (i = 1; i < NSIG; i++)
		if (nset != NULL && FUNC2(nset, i))
			(void)FUNC3(i, SIG_IGN);
	if (nset == NULL || !FUNC2(nset, SIGINT))
		(void)FUNC3(SIGINT, SIG_DFL);
	(void)FUNC1(&eset);
	(void)FUNC4(SIG_SETMASK, &eset, NULL);
}