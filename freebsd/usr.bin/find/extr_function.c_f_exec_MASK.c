#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_6__ {char* fts_path; } ;
struct TYPE_5__ {int flags; size_t e_ppos; size_t e_pbnum; scalar_t__* e_len; scalar_t__ e_psize; size_t e_pnummax; scalar_t__ e_psizemax; scalar_t__ e_pbsize; int /*<<< orphan*/ ** e_argv; int /*<<< orphan*/ * e_orig; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ FTSENT ;

/* Variables and functions */
 int FTS_NOCHDIR ; 
 int F_EXECDIR ; 
 int F_EXECPLUS ; 
 int F_NEEDOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*,scalar_t__) ; 
 int /*<<< orphan*/  dotfd ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int exitstatus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int ftsoptions ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

int
FUNC16(PLAN *plan, FTSENT *entry)
{
	int cnt;
	pid_t pid;
	int status;
	char *file;

	if (entry == NULL && plan->flags & F_EXECPLUS) {
		if (plan->e_ppos == plan->e_pbnum)
			return (1);
		plan->e_argv[plan->e_ppos] = NULL;
		goto doexec;
	}

	/* XXX - if file/dir ends in '/' this will not work -- can it? */
	if ((plan->flags & F_EXECDIR) && \
	    (file = FUNC13(entry->fts_path, '/')))
		file++;
	else
		file = entry->fts_path;

	if (plan->flags & F_EXECPLUS) {
		if ((plan->e_argv[plan->e_ppos] = FUNC11(file)) == NULL)
			FUNC4(1, NULL);
		plan->e_len[plan->e_ppos] = FUNC12(file);
		plan->e_psize += plan->e_len[plan->e_ppos];
		if (++plan->e_ppos < plan->e_pnummax &&
		    plan->e_psize < plan->e_psizemax)
			return (1);
		plan->e_argv[plan->e_ppos] = NULL;
	} else {
		for (cnt = 0; plan->e_argv[cnt]; ++cnt)
			if (plan->e_len[cnt])
				FUNC3(plan->e_orig[cnt],
				    &plan->e_argv[cnt], file,
				    plan->e_len[cnt]);
	}

doexec:	if ((plan->flags & F_NEEDOK) && !FUNC10(plan->e_argv))
		return 0;

	/* make sure find output is interspersed correctly with subprocesses */
	FUNC7(stdout);
	FUNC7(stderr);

	switch (pid = FUNC8()) {
	case -1:
		FUNC4(1, "fork");
		/* NOTREACHED */
	case 0:
		/* change dir back from where we started */
		if (!(plan->flags & F_EXECDIR) &&
		    !(ftsoptions & FTS_NOCHDIR) && FUNC6(dotfd)) {
			FUNC15("chdir");
			FUNC2(1);
		}
		FUNC5(plan->e_argv[0], plan->e_argv);
		FUNC15("%s", plan->e_argv[0]);
		FUNC2(1);
	}
	if (plan->flags & F_EXECPLUS) {
		while (--plan->e_ppos >= plan->e_pbnum)
			FUNC9(plan->e_argv[plan->e_ppos]);
		plan->e_ppos = plan->e_pbnum;
		plan->e_psize = plan->e_pbsize;
	}
	pid = FUNC14(pid, &status, 0);
	if (pid != -1 && FUNC1(status) && !FUNC0(status))
		return (1);
	if (plan->flags & F_EXECPLUS) {
		exitstatus = 1;
		return (1);
	}
	return (0);
}