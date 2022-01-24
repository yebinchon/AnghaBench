#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
struct procstat {int dummy; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int PS_OPT_NOHEADER ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int RLIM_NLIMITS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct procstat*,struct kinfo_proc*,int,struct rlimit*) ; 
 int procstat_opts ; 
 TYPE_1__* rlimit_param ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct procstat *prstat, struct kinfo_proc *kipp)
{
	struct rlimit rlimit;
	int i;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
		FUNC3("{T:/%5s %-16s %-16s %16s %16s}\n",
		    "PID", "COMM", "RLIMIT", "SOFT     ", "HARD     ");
	}
	FUNC3("{ek:process_id/%5d}{e:command/%-16s/%s}", kipp->ki_pid,
	    kipp->ki_comm);
	for (i = 0; i < RLIM_NLIMITS; i++) {
		if (FUNC1(prstat, kipp, i, &rlimit) == -1)
			return;
		FUNC3("{dk:process_id/%5d} {d:command/%-16s} "
		    "{d:rlimit_param/%-16s} ", kipp->ki_pid, kipp->ki_comm,
		    rlimit_param[i].name);

		FUNC4(rlimit_param[i].name);
		if (rlimit.rlim_cur == RLIM_INFINITY)
			FUNC3("{e:soft_limit/infinity}");
		else
			FUNC3("{e:soft_limit/%U}", rlimit.rlim_cur);

		if (rlimit.rlim_max == RLIM_INFINITY)
			FUNC3("{e:hard_limit/infinity}");
		else
			FUNC3("{e:hard_limit/%U}", rlimit.rlim_max);
		FUNC2(rlimit_param[i].name);

		FUNC3("{d:rlim_cur/%16s} ",
		    FUNC0(i, rlimit.rlim_cur));
		FUNC3("{d:rlim_max/%16s}\n",
		    FUNC0(i, rlimit.rlim_max));
	}
}