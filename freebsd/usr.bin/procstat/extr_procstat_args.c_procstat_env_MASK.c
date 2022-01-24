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
struct procstat {int dummy; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
 int PS_OPT_NOHEADER ; 
 char** FUNC0 (struct procstat*,struct kinfo_proc*,int /*<<< orphan*/ ) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct procstat *procstat, struct kinfo_proc *kipp)
{
	int i;
	char **envs;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
		FUNC2("{T:/%5s %-16s %-53s}\n", "PID", "COMM", "ENVIRONMENT");
	}

	envs = FUNC0(procstat, kipp, 0);

	FUNC2("{k:process_id/%5d/%d} {:command/%-16s/%s}", kipp->ki_pid,
	    kipp->ki_comm);

	if (envs == NULL) {
		FUNC2(" {d:env/-}\n");
		return;
	}

	FUNC3("environment");
	for (i = 0; envs[i] != NULL; i++)
		FUNC2(" {l:env/%s}", envs[i]);
	FUNC1("environment");
	FUNC2("\n");
}