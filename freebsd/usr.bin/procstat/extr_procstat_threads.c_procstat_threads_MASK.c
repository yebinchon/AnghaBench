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
struct procstat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pri_level; } ;
struct kinfo_proc {char* ki_comm; int ki_oncpu; int ki_lastcpu; int ki_stat; int ki_kiflag; char* ki_lockname; char* ki_wmesg; TYPE_1__ ki_pri; int /*<<< orphan*/  ki_tid; int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 int KI_LOCKBLOCK ; 
 int PS_OPT_NOHEADER ; 
#define  SIDL 134 
#define  SLOCK 133 
#define  SRUN 132 
#define  SSLEEP 131 
#define  SSTOP 130 
#define  SWAIT 129 
#define  SZOMB 128 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_proc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC5 (struct procstat*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int procstat_opts ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(struct procstat *procstat, struct kinfo_proc *kipp)
{
	struct kinfo_proc *kip;
	unsigned int count, i;
	const char *str;
	char *threadid;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC8("{T:/%5s %6s %-19s %-19s %2s %4s %-7s %-9s}\n", "PID",
		    "TID", "COMM", "TDNAME", "CPU", "PRI", "STATE", "WCHAN");

	FUNC8("{ek:process_id/%d}", kipp->ki_pid);
	FUNC8("{e:command/%s}", FUNC6(kipp->ki_comm) ?
		    kipp->ki_comm : "-");
	FUNC10("threads");

	kip = FUNC5(procstat, KERN_PROC_PID | KERN_PROC_INC_THREAD,
	    kipp->ki_pid, &count);
	if (kip == NULL)
		return;
	FUNC2(kip, count);
	for (i = 0; i < count; i++) {
		kipp = &kip[i];
		FUNC0(&threadid, "%d", kipp->ki_tid);
		if (threadid == NULL)
			FUNC9(1, ENOMEM, "Failed to allocate memory in "
			    "procstat_threads()");
		FUNC10(threadid);
		FUNC8("{dk:process_id/%5d/%d} ", kipp->ki_pid);
		FUNC8("{:thread_id/%6d/%d} ", kipp->ki_tid);
		FUNC8("{d:command/%-19s/%s} ", FUNC6(kipp->ki_comm) ?
		    kipp->ki_comm : "-");
		FUNC8("{:thread_name/%-19s/%s} ",
		    FUNC3(kipp));
		if (kipp->ki_oncpu != 255)
			FUNC8("{:cpu/%3d/%d} ", kipp->ki_oncpu);
		else if (kipp->ki_lastcpu != 255)
			FUNC8("{:cpu/%3d/%d} ", kipp->ki_lastcpu);
		else
			FUNC8("{:cpu/%3s/%s} ", "-");
		FUNC8("{:priority/%4d/%d} ", kipp->ki_pri.pri_level);
		switch (kipp->ki_stat) {
		case SRUN:
			str = "run";
			break;

		case SSTOP:
			str = "stop";
			break;

		case SSLEEP:
			str = "sleep";
			break;

		case SLOCK:
			str = "lock";
			break;

		case SWAIT:
			str = "wait";
			break;

		case SZOMB:
			str = "zomb";
			break;

		case SIDL:
			str = "idle";
			break;

		default:
			str = "??";
			break;
		}
		FUNC8("{:run_state/%-7s/%s} ", str);
		if (kipp->ki_kiflag & KI_LOCKBLOCK) {
			FUNC8("{:lock_name/*%-8s/%s} ",
			    FUNC6(kipp->ki_lockname) ?
			    kipp->ki_lockname : "-");
		} else {
			FUNC8("{:wait_channel/%-9s/%s} ",
			    FUNC6(kipp->ki_wmesg) ? kipp->ki_wmesg : "-");
		}
		FUNC7(threadid);
		FUNC1(threadid);
		FUNC8("\n");
	}
	FUNC7("threads");
	FUNC4(procstat, kip);
}