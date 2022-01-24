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
struct pmcstat_target {int pt_pid; } ;
struct kinfo_proc {int ki_pid; int /*<<< orphan*/  ki_comm; } ;
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_2__ {int /*<<< orphan*/  pa_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  KERN_PROC_PROC ; 
 int REG_EXTENDED ; 
 int REG_NOMATCH ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pmcstat_target*,int /*<<< orphan*/ ) ; 
 int _POSIX2_LINE_MAX ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct kinfo_proc* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct pmcstat_target* FUNC6 (int) ; 
 int /*<<< orphan*/ * pmcstat_kvm ; 
 struct kinfo_proc* pmcstat_plist ; 
 int /*<<< orphan*/  pt_next ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,char**,int /*<<< orphan*/ ) ; 

void
FUNC12(const char *spec)
{
	int n, nproc, pid, rv;
	struct pmcstat_target *pt;
	char errbuf[_POSIX2_LINE_MAX], *end;
	static struct kinfo_proc *kp;
	regex_t reg;
	regmatch_t regmatch;

	/* First check if we've been given a process id. */
      	pid = FUNC11(spec, &end, 0);
	if (end != spec && pid >= 0) {
		if ((pt = FUNC6(sizeof(*pt))) == NULL)
			goto outofmemory;
		pt->pt_pid = pid;
		FUNC0(&args.pa_targets, pt, pt_next);
		return;
	}

	/* Otherwise treat arg as a regular expression naming processes. */
	if (pmcstat_kvm == NULL) {
		if ((pmcstat_kvm = FUNC5(NULL, "/dev/null", NULL, 0,
		    errbuf)) == NULL)
			FUNC1(EX_OSERR, "ERROR: Cannot open kernel \"%s\"",
			    errbuf);
		if ((pmcstat_plist = FUNC4(pmcstat_kvm, KERN_PROC_PROC,
		    0, &nproc)) == NULL)
			FUNC1(EX_OSERR, "ERROR: Cannot get process list: %s",
			    FUNC3(pmcstat_kvm));
	} else
		nproc = 0;

	if ((rv = FUNC7(&reg, spec, REG_EXTENDED|REG_NOSUB)) != 0) {
		FUNC8(rv, &reg, errbuf, sizeof(errbuf));
		FUNC1(EX_DATAERR, "ERROR: Failed to compile regex \"%s\": %s",
		    spec, errbuf);
	}

	for (n = 0, kp = pmcstat_plist; n < nproc; n++, kp++) {
		if ((rv = FUNC9(&reg, kp->ki_comm, 1, &regmatch, 0)) == 0) {
			if ((pt = FUNC6(sizeof(*pt))) == NULL)
				goto outofmemory;
			pt->pt_pid = kp->ki_pid;
			FUNC0(&args.pa_targets, pt, pt_next);
		} else if (rv != REG_NOMATCH) {
			FUNC8(rv, &reg, errbuf, sizeof(errbuf));
			FUNC2(EX_SOFTWARE, "ERROR: Regex evalation failed: %s",
			    errbuf);
		}
	}

	FUNC10(&reg);

	return;

 outofmemory:
	FUNC2(EX_SOFTWARE, "Out of memory.");
	/*NOTREACHED*/
}