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
struct sbuf {int dummy; } ;
struct procstat {int dummy; } ;
struct kinfo_proc {char* ki_comm; int ki_oncpu; int ki_lastcpu; int /*<<< orphan*/  ki_tid; int /*<<< orphan*/  ki_pid; } ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  cpusetid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSET_INVALID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CPU_LEVEL_CPUSET ; 
 int /*<<< orphan*/  CPU_LEVEL_WHICH ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 int PS_OPT_NOHEADER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kinfo_proc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC6 (struct procstat*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 scalar_t__ FUNC9 (struct sbuf*) ; 
 struct sbuf* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*,char*,int,...) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 

void
FUNC15(struct procstat *procstat, struct kinfo_proc *kipp)
{
	cpusetid_t cs;
	cpuset_t mask;
	struct kinfo_proc *kip;
	struct sbuf *cpusetbuf;
	unsigned int count, i;
	int once, twice, lastcpu, cpu;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC13("{T:/%5s %6s %-19s %-19s %2s %4s %-7s}\n", "PID",
		    "TID", "COMM", "TDNAME", "CPU", "CSID", "CPU MASK");

	kip = FUNC6(procstat, KERN_PROC_PID | KERN_PROC_INC_THREAD,
	    kipp->ki_pid, &count);
	if (kip == NULL)
		return;
	FUNC3(kip, count);
	for (i = 0; i < count; i++) {
		kipp = &kip[i];
		FUNC13("{k:process_id/%5d/%d} ", kipp->ki_pid);
		FUNC13("{:thread_id/%6d/%d} ", kipp->ki_tid);
		FUNC13("{:command/%-19s/%s} ", FUNC12(kipp->ki_comm) ?
		    kipp->ki_comm : "-");
		FUNC13("{:thread_name/%-19s/%s} ",
                    FUNC4(kipp));
		if (kipp->ki_oncpu != 255)
			FUNC13("{:cpu/%3d/%d} ", kipp->ki_oncpu);
		else if (kipp->ki_lastcpu != 255)
			FUNC13("{:cpu/%3d/%d} ", kipp->ki_lastcpu);
		else
			FUNC13("{:cpu/%3s/%s} ", "-");
		if (FUNC2(CPU_LEVEL_CPUSET, CPU_WHICH_TID,
		    kipp->ki_tid, &cs) != 0) {
			cs = CPUSET_INVALID;
		}
		FUNC13("{:cpu_set_id/%4d/%d} ", cs);
		if ((cs != CPUSET_INVALID) && 
		    (FUNC1(CPU_LEVEL_WHICH, CPU_WHICH_TID,
		    kipp->ki_tid, sizeof(mask), &mask) == 0)) {
			lastcpu = -1;
			once = 0;
			twice = 0;
			cpusetbuf = FUNC10();
			for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
				if (FUNC0(cpu, &mask)) {
					if (once == 0) {
						FUNC11(cpusetbuf, "%d",
						    cpu);
						once = 1;
					} else if (cpu == lastcpu + 1) {
						twice = 1;
					} else if (twice == 1) {
						FUNC11(cpusetbuf, "-%d,%d",
						    lastcpu, cpu);
						twice = 0;
					} else
						FUNC11(cpusetbuf, ",%d",
						    cpu);
					lastcpu = cpu;
				}
			}
			if (once && twice)
				FUNC11(cpusetbuf, "-%d", lastcpu);
			if (FUNC9(cpusetbuf) != 0)
				FUNC14(1, "Could not generate output");
			FUNC13("{:cpu_set/%s}", FUNC7(cpusetbuf));
			FUNC8(cpusetbuf);
		}
		FUNC13("\n");
	}
	FUNC5(procstat, kip);
}