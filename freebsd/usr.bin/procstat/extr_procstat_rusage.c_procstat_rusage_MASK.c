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
struct kinfo_proc {char* ki_pid; char* ki_comm; } ;

/* Variables and functions */
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 int PS_OPT_NOHEADER ; 
 int PS_OPT_PERTHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_proc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC3 (struct procstat*,int,char*,unsigned int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(struct procstat *procstat, struct kinfo_proc *kipp)
{
	struct kinfo_proc *kip;
	unsigned int count, i;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0) {
		FUNC5("{d:ta/%5s} ", "PID");
		if ((procstat_opts & PS_OPT_PERTHREAD) != 0)
			FUNC5("{d:tb/%6s} ", "TID");
		FUNC5("{d:tc/%-16s %-32s %14s}\n", "COMM", "RESOURCE",
		    "VALUE        ");
	}

	if ((procstat_opts & PS_OPT_PERTHREAD) == 0) {
		FUNC1(kipp);
		return;
	}

	FUNC5("{e:process_id/%d}", kipp->ki_pid);
	FUNC5("{e:command/%s}", kipp->ki_comm);
	FUNC6("threads");

	kip = FUNC3(procstat, KERN_PROC_PID | KERN_PROC_INC_THREAD,
	    kipp->ki_pid, &count);
	if (kip == NULL)
		return;
	FUNC0(kip, count);
	for (i = 0; i < count; i++) {
		FUNC1(&kip[i]);
	}

	FUNC4("threads");
	FUNC2(procstat, kip);
}