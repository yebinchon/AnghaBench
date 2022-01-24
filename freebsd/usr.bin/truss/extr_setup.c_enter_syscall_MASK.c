#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct trussinfo {int /*<<< orphan*/  outfile; } ;
struct TYPE_7__ {int number; scalar_t__ nargs; int /*<<< orphan*/ * args; int /*<<< orphan*/ * s_args; struct syscall* sc; } ;
struct threadinfo {int /*<<< orphan*/  before; TYPE_3__ cs; TYPE_2__* proc; int /*<<< orphan*/  tid; } ;
struct syscall {scalar_t__ nargs; char* name; TYPE_4__* args; scalar_t__ unknown; } ;
struct ptrace_lwpinfo {int /*<<< orphan*/  pl_syscall_narg; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_8__ {size_t offset; int type; } ;
struct TYPE_6__ {TYPE_1__* abi; } ;
struct TYPE_5__ {char* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int OUT ; 
 int /*<<< orphan*/  PT_GET_SC_ARGS ; 
 int /*<<< orphan*/  FUNC1 (struct threadinfo*,struct ptrace_lwpinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct threadinfo*) ; 
 struct syscall* FUNC6 (struct threadinfo*,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct trussinfo*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC10(struct trussinfo *info, struct threadinfo *t,
    struct ptrace_lwpinfo *pl)
{
	struct syscall *sc;
	u_int i, narg;

	FUNC1(t, pl);
	narg = FUNC0(pl->pl_syscall_narg, FUNC7(t->cs.args));
	if (narg != 0 && FUNC9(PT_GET_SC_ARGS, t->tid, (caddr_t)t->cs.args,
	    sizeof(t->cs.args)) != 0) {
		FUNC5(t);
		return;
	}

	sc = FUNC6(t, t->cs.number, narg);
	if (sc->unknown)
		FUNC4(info->outfile, "-- UNKNOWN %s SYSCALL %d --\n",
		    t->proc->abi->type, t->cs.number);

	t->cs.nargs = sc->nargs;
	FUNC2(sc->nargs <= FUNC7(t->cs.s_args));

	t->cs.sc = sc;

	/*
	 * At this point, we set up the system call arguments.
	 * We ignore any OUT ones, however -- those are arguments that
	 * are set by the system call, and so are probably meaningless
	 * now.	This doesn't currently support arguments that are
	 * passed in *and* out, however.
	 */
#if DEBUG
	fprintf(stderr, "syscall %s(", sc->name);
#endif
	for (i = 0; i < t->cs.nargs; i++) {
#if DEBUG
		fprintf(stderr, "0x%lx%s", t->cs.args[sc->args[i].offset],
		    i < (t->cs.nargs - 1) ? "," : "");
#endif
		if (!(sc->args[i].type & OUT)) {
			t->cs.s_args[i] = FUNC8(&sc->args[i],
			    t->cs.args, NULL, info);
		}
	}
#if DEBUG
	fprintf(stderr, ")\n");
#endif

	FUNC3(CLOCK_REALTIME, &t->before);
}