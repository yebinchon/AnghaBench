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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  timing ;
struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
typedef  int cryptostats ;
struct alg {int blocksize; char* name; scalar_t__ ishash; } ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  otiming ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_2__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_WHICH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CPU_WHICH_PID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAP_ANON ; 
 void* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  WAIT_MYPGRP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,double,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct alg*,struct alg*,int,int,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char*,int*,size_t*,int*,int) ; 
 scalar_t__ verbose ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void
FUNC14(struct alg *ealg, struct alg *alg, int count, int size, u_long cmd, int threads, int profile)
{
	int i, status;
	double t;
	void *region;
	struct timeval *tvp;
	struct timeval total;
	int otiming;

	if (size % alg->blocksize || (ealg && size % ealg->blocksize)) {
		if (verbose)
			FUNC8("skipping blocksize %u 'cuz not a multiple of "
				"%s blocksize %u (or %s blocksize %u)\n",
				size, alg->name, alg->blocksize,
				ealg ?  ealg->name : "n/a",
				ealg ? ealg->blocksize : 0);
		return;
	}

	region = FUNC6(NULL, threads * sizeof (struct timeval),
			PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED, -1, 0);
	if (region == MAP_FAILED) {
		FUNC7("mmap");
		return;
	}
	tvp = (struct timeval *) region;
#ifdef __FreeBSD__
	if (profile) {
		size_t tlen = sizeof (otiming);
		int timing = 1;

		resetstats();
		if (sysctlbyname("debug.crypto_timing", &otiming, &tlen,
				&timing, sizeof (timing)) < 0)
			perror("debug.crypto_timing");
	}
#endif

	if (threads > 1) {
		for (i = 0; i < threads; i++)
			if (FUNC5() == 0) {
				cpuset_t mask;
				FUNC1(&mask);
				FUNC0(i, &mask);
				FUNC2(CPU_LEVEL_WHICH, CPU_WHICH_PID,
				    -1, sizeof(mask), &mask);
				FUNC11(ealg, alg, count, size, cmd, &tvp[i]);
				FUNC3(0);
			}
		while (FUNC13(WAIT_MYPGRP, &status, 0) != -1)
			;
	} else
		FUNC11(ealg, alg, count, size, cmd, tvp);

	t = 0;
	for (i = 0; i < threads; i++)
		t += (((double)tvp[i].tv_sec * 1000000 + tvp[i].tv_usec) / 1000000);
	if (t) {
		int nops = alg->ishash ? count : 2*count;

		nops *= threads;
		FUNC8("%8.3lf sec, %7d %6s%s%6s crypts, %7d bytes, %8.0lf byte/sec, %7.1lf Mb/sec\n",
		    t, nops, alg->name, ealg? "+" : "", ealg? ealg->name : "",
		    size, (double)nops*size / t,
		    (double)nops*size / t * 8 / 1024 / 1024);
	}
#ifdef __FreeBSD__
	if (profile) {
		struct cryptostats stats;
		size_t slen = sizeof (stats);

		if (sysctlbyname("debug.crypto_timing", NULL, NULL,
				&otiming, sizeof (otiming)) < 0)
			perror("debug.crypto_timing");
		if (sysctlbyname("kern.crypto_stats", &stats, &slen, NULL, 0) < 0)
			perror("kern.cryptostats");
		if (stats.cs_invoke.count) {
			printt("dispatch->invoke", &stats.cs_invoke);
			printt("invoke->done", &stats.cs_done);
			printt("done->cb", &stats.cs_cb);
			printt("cb->finis", &stats.cs_finis);
		}
	}
#endif
	FUNC4(stdout);
}