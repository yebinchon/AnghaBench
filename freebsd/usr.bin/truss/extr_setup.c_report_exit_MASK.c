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
struct TYPE_3__ {scalar_t__ si_code; int si_status; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 scalar_t__ CLD_DUMPED ; 
 scalar_t__ CLD_EXITED ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trussinfo*) ; 

__attribute__((used)) static void
FUNC3(struct trussinfo *info, siginfo_t *si)
{
	struct threadinfo *t;

	t = info->curthread;
	FUNC0(CLOCK_REALTIME, &t->after);
	FUNC2(info);
	if (si->si_code == CLD_EXITED)
		FUNC1(info->outfile, "process exit, rval = %u\n",
		    si->si_status);
	else
		FUNC1(info->outfile, "process killed, signal = %u%s\n",
		    si->si_status, si->si_code == CLD_DUMPED ?
		    " (core dumped)" : "");
}