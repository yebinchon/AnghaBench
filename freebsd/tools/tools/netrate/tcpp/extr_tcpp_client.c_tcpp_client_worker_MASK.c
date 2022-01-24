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
struct kevent {int dummy; } ;
typedef  int /*<<< orphan*/  ncpus ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_2__ {int /*<<< orphan*/  sin_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ Pflag ; 
 int /*<<< orphan*/  SYSCTLNAME_CPUS ; 
 int /*<<< orphan*/  FUNC2 (struct kevent*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 scalar_t__ finished ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ kq ; 
 scalar_t__ FUNC7 () ; 
 struct kevent* FUNC8 (int) ; 
 int mflag ; 
 TYPE_1__ remoteip ; 
 scalar_t__ rflag ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ started ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kevent*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ tflag ; 

__attribute__((used)) static void
FUNC14(int workernum)
{
	struct kevent *kev_array;
	int i, numevents, kev_bytes;
#if defined(CPU_SETSIZE) && 0
	cpu_set_t mask;
	int ncpus;
	size_t len;

	if (Pflag) {
		len = sizeof(ncpus);
		if (sysctlbyname(SYSCTLNAME_CPUS, &ncpus, &len, NULL, 0) < 0)
			err(-1, "sysctlbyname: %s", SYSCTLNAME_CPUS);
		if (len != sizeof(ncpus))
			errx(-1, "sysctlbyname: %s: len %jd", SYSCTLNAME_CPUS,
			    (intmax_t)len);

		CPU_ZERO(&mask);
		CPU_SET(workernum % ncpus, &mask);
		if (sched_setaffinity(0, CPU_SETSIZE, &mask) < 0)
			err(-1, "sched_setaffinity");
	}
#endif
	FUNC10("tcpp_client %d", workernum);

	/*
	 * Add the worker number to the remote port.
	 */
	remoteip.sin_port = FUNC5(rflag + workernum);

	kev_bytes = sizeof(*kev_array) * mflag;
	kev_array = FUNC8(kev_bytes);
	if (kev_array == NULL)
		FUNC3(-1, "malloc");
	FUNC2(kev_array, kev_bytes);

	kq = FUNC7();
	if (kq < 0)
		FUNC3(-1, "kqueue");

	while (finished < tflag) {
		while ((started - finished < mflag) && (started < tflag))
			(void)FUNC13();
		numevents = FUNC6(kq, NULL, 0, kev_array, mflag, NULL);
		if (numevents < 0)
			FUNC3(-1, "kevent");
		if (numevents > mflag)
			FUNC4(-1, "kevent: %d", numevents);
		for (i = 0; i < numevents; i++)
			FUNC12(&kev_array[i]);
	}
	/* printf("Worker %d done - %d finished\n", workernum, finished); */
}