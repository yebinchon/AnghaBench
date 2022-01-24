#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trussinfo {int /*<<< orphan*/  outfile; struct threadinfo* curthread; } ;
struct threadinfo {int /*<<< orphan*/  after; } ;
struct ptrace_lwpinfo {scalar_t__ pl_event; int pl_flags; int /*<<< orphan*/  pl_siginfo; } ;
struct TYPE_3__ {int si_status; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ PL_EVENT_SIGNAL ; 
 int PL_FLAG_SI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct trussinfo*) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct trussinfo *info, siginfo_t *si, struct ptrace_lwpinfo *pl)
{
	struct threadinfo *t;
	const char *signame;

	t = info->curthread;
	FUNC0(CLOCK_REALTIME, &t->after);
	FUNC3(info);
	signame = FUNC4(si->si_status);
	if (signame == NULL)
		signame = "?";
	FUNC2(info->outfile, "SIGNAL %u (%s)", si->si_status, signame);
	if (pl->pl_event == PL_EVENT_SIGNAL && pl->pl_flags & PL_FLAG_SI)
		FUNC1(info->outfile, &pl->pl_siginfo);
	FUNC2(info->outfile, "\n");
	
}