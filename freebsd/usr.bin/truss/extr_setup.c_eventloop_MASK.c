#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct trussinfo {int flags; TYPE_5__* curthread; int /*<<< orphan*/  proclist; } ;
struct ptrace_lwpinfo {int pl_flags; int /*<<< orphan*/  pl_lwpid; } ;
struct TYPE_8__ {scalar_t__ si_signo; int si_code; int si_status; int /*<<< orphan*/  si_pid; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  pl ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_10__ {int /*<<< orphan*/ * abi; } ;
struct TYPE_9__ {int /*<<< orphan*/  proc; } ;

/* Variables and functions */
#define  CLD_CONTINUED 133 
#define  CLD_DUMPED 132 
#define  CLD_EXITED 131 
#define  CLD_KILLED 130 
#define  CLD_STOPPED 129 
#define  CLD_TRAPPED 128 
 int COUNTONLY ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int NOSIGS ; 
 int PL_FLAG_BORN ; 
 int PL_FLAG_CHILD ; 
 int PL_FLAG_EXITED ; 
 int PL_FLAG_SCE ; 
 int PL_FLAG_SCX ; 
 int /*<<< orphan*/  PT_LWPINFO ; 
 int /*<<< orphan*/  PT_SYSCALL ; 
 int /*<<< orphan*/  P_ALL ; 
 scalar_t__ SIGCHLD ; 
 int SIGTRAP ; 
 int WEXITED ; 
 int WTRAPPED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct trussinfo*) ; 
 scalar_t__ detaching ; 
 int /*<<< orphan*/  FUNC4 (struct trussinfo*,TYPE_5__*,struct ptrace_lwpinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct trussinfo*,struct ptrace_lwpinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct trussinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct trussinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct trussinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (struct trussinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct trussinfo*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC18 (struct trussinfo*,TYPE_1__*,struct ptrace_lwpinfo*) ; 
 int /*<<< orphan*/  FUNC19 (struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC20 (struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC21 (struct trussinfo*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC23(struct trussinfo *info)
{
	struct ptrace_lwpinfo pl;
	siginfo_t si;
	int pending_signal;

	while (!FUNC0(&info->proclist)) {
		if (detaching) {
			FUNC3(info);
			return;
		}

		if (FUNC22(P_ALL, 0, &si, WTRAPPED | WEXITED) == -1) {
			if (errno == EINTR)
				continue;
			FUNC5(1, "Unexpected error from waitid");
		}

		FUNC2(si.si_signo == SIGCHLD);

		switch (si.si_code) {
		case CLD_EXITED:
		case CLD_KILLED:
		case CLD_DUMPED:
			FUNC8(info, si.si_pid);
			if ((info->flags & COUNTONLY) == 0) {
				if (si.si_code == CLD_EXITED)
					FUNC21(info);
				FUNC16(info, &si);
			}
			FUNC11(info->curthread->proc);
			info->curthread = NULL;
			break;
		case CLD_TRAPPED:
			if (FUNC15(PT_LWPINFO, si.si_pid, (caddr_t)&pl,
			    sizeof(pl)) == -1)
				FUNC5(1, "ptrace(PT_LWPINFO)");

			if (pl.pl_flags & PL_FLAG_CHILD) {
				FUNC13(info, si.si_pid, pl.pl_lwpid);
				FUNC2(FUNC1(&info->proclist)->abi !=
				    NULL);
			} else if (pl.pl_flags & PL_FLAG_BORN)
				FUNC14(FUNC9(info, si.si_pid),
				    pl.pl_lwpid);
			FUNC10(info, si.si_pid, pl.pl_lwpid);

			if (si.si_status == SIGTRAP &&
			    (pl.pl_flags & (PL_FLAG_BORN|PL_FLAG_EXITED|
			    PL_FLAG_SCE|PL_FLAG_SCX)) != 0) {
				if (pl.pl_flags & PL_FLAG_BORN) {
					if ((info->flags & COUNTONLY) == 0)
						FUNC19(info);
				} else if (pl.pl_flags & PL_FLAG_EXITED) {
					if ((info->flags & COUNTONLY) == 0)
						FUNC20(info);
					FUNC12(info->curthread);
					info->curthread = NULL;
				} else if (pl.pl_flags & PL_FLAG_SCE)
					FUNC4(info, info->curthread, &pl);
				else if (pl.pl_flags & PL_FLAG_SCX)
					FUNC7(info, &pl);
				pending_signal = 0;
			} else if (pl.pl_flags & PL_FLAG_CHILD) {
				if ((info->flags & COUNTONLY) == 0)
					FUNC17(info);
				pending_signal = 0;
			} else {
				if ((info->flags & NOSIGS) == 0)
					FUNC18(info, &si, &pl);
				pending_signal = si.si_status;
			}
			FUNC15(PT_SYSCALL, si.si_pid, (caddr_t)1,
			    pending_signal);
			break;
		case CLD_STOPPED:
			FUNC6(1, "waitid reported CLD_STOPPED");
		case CLD_CONTINUED:
			break;
		}
	}
}