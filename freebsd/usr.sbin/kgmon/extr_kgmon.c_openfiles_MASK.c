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
struct kvmvars {int /*<<< orphan*/ * kd; } ;
struct TYPE_3__ {int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 scalar_t__ Bflag ; 
 int CTL_KERN ; 
 int GMON_PROF_HIRES ; 
 int GMON_PROF_ON ; 
 int GPROF_STATE ; 
 int KERN_PROF ; 
 size_t N_GMONPARAM ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int _POSIX2_LINE_MAX ; 
 scalar_t__ bflag ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kflag ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC4 (char const*,char*,int /*<<< orphan*/ *,int,char*) ; 
 TYPE_1__* nl ; 
 scalar_t__ pflag ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*,int,int*,size_t*,int*,size_t) ; 

int
FUNC7(const char *systemname, char *kmemf, struct kvmvars *kvp)
{
	size_t size;
	int mib[3], state, openmode;
	char errbuf[_POSIX2_LINE_MAX];

	if (!kflag) {
		mib[0] = CTL_KERN;
		mib[1] = KERN_PROF;
		mib[2] = GPROF_STATE;
		size = sizeof state;
		if (FUNC6(mib, 3, &state, &size, NULL, 0) < 0)
			FUNC0(20, "profiling not defined in kernel");
		if (!(Bflag || bflag || hflag || rflag ||
		    (pflag &&
		     (state == GMON_PROF_HIRES || state == GMON_PROF_ON))))
			return (O_RDONLY);
		(void)FUNC5(0);
		if (FUNC6(mib, 3, NULL, NULL, &state, size) >= 0)
			return (O_RDWR);
		(void)FUNC5(FUNC1());
		FUNC2(state);
		return (O_RDONLY);
	}
	openmode = (Bflag || bflag || hflag || pflag || rflag)
		   ? O_RDWR : O_RDONLY;
	kvp->kd = FUNC4(systemname, kmemf, NULL, openmode, errbuf);
	if (kvp->kd == NULL) {
		if (openmode == O_RDWR) {
			openmode = O_RDONLY;
			kvp->kd = FUNC4(systemname, kmemf, NULL, O_RDONLY,
			    errbuf);
		}
		if (kvp->kd == NULL)
			FUNC0(2, "kvm_openfiles: %s", errbuf);
		FUNC2(GMON_PROF_ON);
	}
	if (FUNC3(kvp->kd, nl) < 0)
		FUNC0(3, "%s: no namelist", systemname);
	if (!nl[N_GMONPARAM].n_value)
		FUNC0(20, "profiling not defined in kernel");
	return (openmode);
}