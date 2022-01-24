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
struct kinfo_proc {int /*<<< orphan*/  ki_sigmask; int /*<<< orphan*/  ki_siglist; int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_tid; int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int KERN_PROC_INC_THREAD ; 
 int KERN_PROC_PID ; 
 int PS_OPT_NOHEADER ; 
 int _SIG_MAXSIG ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_proc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct procstat*,struct kinfo_proc*) ; 
 struct kinfo_proc* FUNC5 (struct procstat*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void
FUNC12(struct procstat *procstat, struct kinfo_proc *kipp)
{
	struct kinfo_proc *kip;
	int j;
	unsigned int count, i;
	char *threadid;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC9("{T:/%5s %6s %-16s %-7s %4s}\n", "PID", "TID", "COMM",
		     "SIG", "FLAGS");

	kip = FUNC5(procstat, KERN_PROC_PID | KERN_PROC_INC_THREAD,
	    kipp->ki_pid, &count);
	if (kip == NULL)
		return;
	FUNC9("{ek:process_id/%5d/%d}", kipp->ki_pid);
	FUNC9("{e:command/%-16s/%s}", kipp->ki_comm);
	FUNC11("threads");
	FUNC2(kip, count);
	for (i = 0; i < count; i++) {
		kipp = &kip[i];
		FUNC0(&threadid, "%d", kipp->ki_tid);
		if (threadid == NULL)
			FUNC10(1, ENOMEM, "Failed to allocate memory in "
			    "procstat_threads_sigs()");
		FUNC11(threadid);
		FUNC9("{e:thread_id/%6d/%d}", kipp->ki_tid);
		FUNC11("signals");
		for (j = 1; j <= _SIG_MAXSIG; j++) {
			FUNC9("{dk:process_id/%5d/%d} ", kipp->ki_pid);
			FUNC9("{d:thread_id/%6d/%d} ", kipp->ki_tid);
			FUNC9("{d:command/%-16s/%s} ", kipp->ki_comm);
			FUNC7(j);
			FUNC9(" ");
			FUNC6(&kipp->ki_siglist, j, 'P');
			FUNC6(&kipp->ki_sigmask, j, 'B');
			FUNC3(j);
			FUNC9("\n");
		}
		FUNC8("signals");
		FUNC8(threadid);
		FUNC1(threadid);
	}
	FUNC8("threads");
	FUNC4(procstat, kip);
}