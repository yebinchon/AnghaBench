#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct p_times {int dummy; } ;
struct kinfo_proc {float ki_swtime; int ki_flag; scalar_t__ ki_pctcpu; } ;
struct TYPE_4__ {float pt_pctcpu; struct kinfo_proc* pt_kp; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_PROC_ALL ; 
 int P_INMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 double FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 double fscale ; 
 int /*<<< orphan*/  kd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct kinfo_proc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 float lccpu ; 
 TYPE_1__* FUNC6 (int) ; 
 int nproc ; 
 TYPE_1__* pt ; 

void
FUNC7(void)
{
	int i;
	float ftime;
	float *pctp;
	struct kinfo_proc *kpp;
	static int lastnproc = 0;

	if ((kpp = FUNC5(kd, KERN_PROC_ALL, 0, &nproc)) == NULL) {
		FUNC1("%s", FUNC4(kd));
		if (pt)
			FUNC3(pt);
		return;
	}
	if (nproc > lastnproc) {
		FUNC3(pt);
		if ((pt =
		    FUNC6(nproc * sizeof(struct p_times))) == NULL) {
			FUNC1("Out of memory");
			FUNC0(0);
		}
	}
	lastnproc = nproc;
	/*
	 * calculate %cpu for each proc
	 */
	for (i = 0; i < nproc; i++) {
		pt[i].pt_kp = &kpp[i];
		pctp = &pt[i].pt_pctcpu;
		ftime = kpp[i].ki_swtime;
		if (ftime == 0 || (kpp[i].ki_flag & P_INMEM) == 0)
			*pctp = 0;
		else
			*pctp = ((double) kpp[i].ki_pctcpu /
					fscale) / (1.0 - FUNC2(ftime * lccpu));
	}
}