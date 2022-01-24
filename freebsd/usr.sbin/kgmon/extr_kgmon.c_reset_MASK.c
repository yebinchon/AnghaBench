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
typedef  scalar_t__ u_long ;
struct TYPE_2__ {scalar_t__ kcountsize; scalar_t__ fromssize; scalar_t__ tossize; scalar_t__ tos; scalar_t__ froms; scalar_t__ kcount; } ;
struct kvmvars {TYPE_1__ gpm; int /*<<< orphan*/  kd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int /*<<< orphan*/  GMON_PROF_OFF ; 
 int GPROF_COUNT ; 
 int GPROF_FROMS ; 
 int GPROF_TOS ; 
 int KERN_PROF ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ kflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvmvars*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__) ; 

void
FUNC11(struct kvmvars *kvp)
{
	char *zbuf;
	u_long biggest;
	int mib[3];

	FUNC9(kvp, GMON_PROF_OFF);

	biggest = kvp->gpm.kcountsize;
	if (kvp->gpm.fromssize > biggest)
		biggest = kvp->gpm.fromssize;
	if (kvp->gpm.tossize > biggest)
		biggest = kvp->gpm.tossize;
	if ((zbuf = (char *)FUNC7(biggest)) == NULL)
		FUNC2(12, "cannot allocate zbuf space");
	FUNC0(zbuf, biggest);
	if (kflag) {
		if (FUNC6(kvp->kd, (u_long)kvp->gpm.kcount, zbuf,
		    kvp->gpm.kcountsize) != (ssize_t)kvp->gpm.kcountsize)
			FUNC2(13, "tickbuf zero: %s", FUNC5(kvp->kd));
		if (FUNC6(kvp->kd, (u_long)kvp->gpm.froms, zbuf,
		    kvp->gpm.fromssize) != (ssize_t)kvp->gpm.fromssize)
			FUNC2(14, "froms zero: %s", FUNC5(kvp->kd));
		if (FUNC6(kvp->kd, (u_long)kvp->gpm.tos, zbuf,
		    kvp->gpm.tossize) != (ssize_t)kvp->gpm.tossize)
			FUNC2(15, "tos zero: %s", FUNC5(kvp->kd));
		FUNC3(zbuf);
		return;
	}
	(void)FUNC8(0);
	mib[0] = CTL_KERN;
	mib[1] = KERN_PROF;
	mib[2] = GPROF_COUNT;
	if (FUNC10(mib, 3, NULL, NULL, zbuf, kvp->gpm.kcountsize) < 0)
		FUNC1(13, "tickbuf zero");
	mib[2] = GPROF_FROMS;
	if (FUNC10(mib, 3, NULL, NULL, zbuf, kvp->gpm.fromssize) < 0)
		FUNC1(14, "froms zero");
	mib[2] = GPROF_TOS;
	if (FUNC10(mib, 3, NULL, NULL, zbuf, kvp->gpm.tossize) < 0)
		FUNC1(15, "tos zero");
	(void)FUNC8(FUNC4());
	FUNC3(zbuf);
}