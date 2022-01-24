#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct trussinfo {struct threadinfo* curthread; } ;
struct TYPE_3__ {char** s_args; int /*<<< orphan*/ * args; struct syscall* sc; } ;
struct threadinfo {TYPE_1__ cs; int /*<<< orphan*/  tid; struct procinfo* proc; int /*<<< orphan*/  after; int /*<<< orphan*/  in_syscall; } ;
struct syscall {size_t nargs; TYPE_2__* args; } ;
struct ptrace_sc_ret {scalar_t__ sr_error; int /*<<< orphan*/  sr_retval; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct procinfo {int /*<<< orphan*/  pid; int /*<<< orphan*/ * abi; int /*<<< orphan*/  threadlist; } ;
typedef  int /*<<< orphan*/  psr ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int type; size_t offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OUT ; 
 int PL_FLAG_EXEC ; 
 int /*<<< orphan*/  PT_DETACH ; 
 int /*<<< orphan*/  PT_GET_SC_RET ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct procinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct threadinfo*) ; 
 char* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct trussinfo*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(struct trussinfo *info, struct ptrace_lwpinfo *pl)
{
	struct threadinfo *t;
	struct procinfo *p;
	struct syscall *sc;
	struct ptrace_sc_ret psr;
	u_int i;

	t = info->curthread;
	if (!t->in_syscall)
		return;

	FUNC4(CLOCK_REALTIME, &t->after);
	p = t->proc;
	if (FUNC11(PT_GET_SC_RET, t->tid, (caddr_t)&psr, sizeof(psr)) != 0) {
		FUNC8(t);
		return;
	}

	sc = t->cs.sc;
	/*
	 * Here, we only look for arguments that have OUT masked in --
	 * otherwise, they were handled in enter_syscall().
	 */
	for (i = 0; i < sc->nargs; i++) {
		char *temp;

		if (sc->args[i].type & OUT) {
			/*
			 * If an error occurred, then don't bother
			 * getting the data; it may not be valid.
			 */
			if (psr.sr_error != 0) {
				FUNC2(&temp, "0x%x",
				    t->cs.args[sc->args[i].offset]);
			} else {
				temp = FUNC9(&sc->args[i],
				    t->cs.args, psr.sr_retval, info);
			}
			t->cs.s_args[i] = temp;
		}
	}

	FUNC10(info, psr.sr_error, psr.sr_retval);
	FUNC8(t);

	/*
	 * If the process executed a new image, check the ABI.  If the
	 * new ABI isn't supported, stop tracing this process.
	 */
	if (pl->pl_flags & PL_FLAG_EXEC) {
		FUNC3(FUNC1(FUNC0(&p->threadlist), entries) == NULL);
		p->abi = FUNC6(p->pid);
		if (p->abi == NULL) {
			if (FUNC11(PT_DETACH, p->pid, (caddr_t)1, 0) < 0)
				FUNC5(1, "Can not detach the process");
			FUNC7(p);
		}
	}
}