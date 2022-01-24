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
struct kinfo_proc {char* ki_pid; char* ki_tid; char* ki_comm; } ;
struct kinfo_kstack {char* kkst_tid; int kkst_state; int /*<<< orphan*/  kkst_trace; } ;

/* Variables and functions */
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 int KKST_MAXLEN ; 
#define  KKST_STATE_RUNNING 130 
#define  KKST_STATE_STACKOK 129 
#define  KKST_STATE_SWAPPED 128 
 int PS_OPT_NOHEADER ; 
 int PS_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_kstack*,unsigned int) ; 
 char* FUNC1 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct procstat*,struct kinfo_kstack*) ; 
 int /*<<< orphan*/  FUNC5 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_kstack* FUNC6 (struct procstat*,struct kinfo_proc*,unsigned int*) ; 
 struct kinfo_proc* FUNC7 (struct procstat*,int,char*,unsigned int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(struct procstat *procstat, struct kinfo_proc *kipp)
{
	struct kinfo_kstack *kkstp, *kkstp_free;
	struct kinfo_proc *kip, *kip_free;
	char trace[KKST_MAXLEN], encoded_trace[KKST_MAXLEN];
	unsigned int i, j;
	unsigned int kip_count, kstk_count;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC9("{T:/%5s %6s %-19s %-19s %-29s}\n", "PID", "TID", "COMM",
		    "TDNAME", "KSTACK");

	kkstp = kkstp_free = FUNC6(procstat, kipp, &kstk_count);
	if (kkstp == NULL)
		return;

	/*
	 * We need to re-query for thread information, so don't use *kipp.
	 */
	kip = kip_free = FUNC7(procstat,
	    KERN_PROC_PID | KERN_PROC_INC_THREAD, kipp->ki_pid, &kip_count);

	if (kip == NULL) {
		FUNC4(procstat, kkstp_free);
		return;
	}

	FUNC0(kkstp, kstk_count);
	for (i = 0; i < kstk_count; i++) {
		kkstp = &kkstp_free[i];

		/*
		 * Look up the specific thread using its tid so we can
		 * display the per-thread command line.
		 */
		kipp = NULL;
		for (j = 0; j < kip_count; j++) {
			kipp = &kip_free[j];
			if (kkstp->kkst_tid == kipp->ki_tid)
				break;
		}
		if (kipp == NULL)
			continue;

		FUNC9("{k:process_id/%5d/%d} ", kipp->ki_pid);
		FUNC9("{:thread_id/%6d/%d} ", kkstp->kkst_tid);
		FUNC9("{:command/%-19s/%s} ", kipp->ki_comm);
		FUNC9("{:thread_name/%-19s/%s} ",
                    FUNC1(kipp));

		switch (kkstp->kkst_state) {
		case KKST_STATE_RUNNING:
			FUNC9("{:state/%-29s/%s}\n", "<running>");
			continue;

		case KKST_STATE_SWAPPED:
			FUNC9("{:state/%-29s/%s}\n", "<swapped>");
			continue;

		case KKST_STATE_STACKOK:
			break;

		default:
			FUNC9("{:state/%-29s/%s}\n", "<unknown>");
			continue;
		}

		/*
		 * The kernel generates a trace with carriage returns between
		 * entries, but for a more compact view, we convert carriage
		 * returns to spaces.
		 */
		FUNC2(kkstp->kkst_trace, trace,
		    (procstat_opts & PS_OPT_VERBOSE) != 0 ? 2 : 1);
		FUNC10("trace");
		FUNC3(kkstp->kkst_trace, encoded_trace,
		    (procstat_opts & PS_OPT_VERBOSE) != 0 ? 2 : 1);
		FUNC8("trace");
		FUNC9("{d:trace/%-29s}\n", trace);
	}
	FUNC4(procstat, kkstp_free);
	FUNC5(procstat, kip_free);
}