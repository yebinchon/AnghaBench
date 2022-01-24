#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long ru_maxrss; int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;
struct kinfo_proc {char* ki_tid; TYPE_1__ ki_rusage; int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_pid; } ;
struct TYPE_5__ {char* ri_name; int /*<<< orphan*/  ri_scale; int /*<<< orphan*/  ri_humanize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int PS_OPT_PERTHREAD ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct kinfo_proc*) ; 
 int procstat_opts ; 
 TYPE_2__* rusage_info ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(struct kinfo_proc *kipp)
{
	long *lp;
	unsigned int i;
	char *field, *threadid;

	FUNC5(kipp);
	FUNC7("{d:resource/%-14s} {d:usage/%29s}{P:   }\n", "user time",
	    FUNC1(&kipp->ki_rusage.ru_utime));
	FUNC5(kipp);
	FUNC7("{d:resource/%-14s} {d:usage/%29s}{P:   }\n", "system time",
	    FUNC1(&kipp->ki_rusage.ru_stime));

	if ((procstat_opts & PS_OPT_PERTHREAD) != 0) {
		FUNC0(&threadid, "%s", kipp->ki_tid);
		if (threadid == NULL)
			FUNC8(1, ENOMEM,
			    "Failed to allocate memory in print_rusage()");
		FUNC9(threadid);
		FUNC7("{e:thread_id/%d}", kipp->ki_tid);
	} else {
		FUNC7("{e:process_id/%d}", kipp->ki_pid);
		FUNC7("{e:command/%s}", kipp->ki_comm);
	}
	FUNC7("{e:user time/%s}", FUNC1(&kipp->ki_rusage.ru_utime));
	FUNC7("{e:system time/%s}", FUNC1(&kipp->ki_rusage.ru_stime));

	lp = &kipp->ki_rusage.ru_maxrss;
	for (i = 0; i < FUNC4(rusage_info); i++) {
		FUNC5(kipp);
		FUNC0(&field, "{e:%s/%%D}", rusage_info[i].ri_name);
		if (field == NULL)
			FUNC8(1, ENOMEM,
			    "Failed to allocate memory in print_rusage()");
		FUNC7(field, *lp);
		FUNC3(field);
		FUNC7("{d:resource/%-32s} {d:usage/%14s}\n",
		    rusage_info[i].ri_name,
		    FUNC2(*lp, rusage_info[i].ri_humanize,
		    rusage_info[i].ri_scale));
		lp++;
	}
	if ((procstat_opts & PS_OPT_PERTHREAD) != 0) {
		FUNC6(threadid);
		FUNC3(threadid);
	}
}