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
struct cfjail {int flags; scalar_t__* comparam; scalar_t__ pstatus; int /*<<< orphan*/ * comline; } ;

/* Variables and functions */
 scalar_t__ IP_STOP_TIMEOUT ; 
 int JF_FROM_RUNQ ; 
 int JF_SLEEPQ ; 
 int JF_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cfjail* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cfjail*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cfjail*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfjail*,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  paralimit ; 
 int /*<<< orphan*/  ready ; 
 int /*<<< orphan*/  FUNC8 (struct cfjail*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  runnable ; 
 scalar_t__ verbose ; 

int
FUNC9(struct cfjail *j)
{
	struct cfjail *rj;
	int error;

	if (!(j->flags & JF_SLEEPQ))
		return 0;
	j->flags &= ~JF_SLEEPQ;
	if (*j->comparam == IP_STOP_TIMEOUT) {
		j->flags &= ~JF_TIMEOUT;
		j->pstatus = 0;
		return 0;
	}
	paralimit++;
	if (!FUNC0(&runnable)) {
		rj = FUNC1(&runnable);
		rj->flags |= JF_FROM_RUNQ;
		FUNC8(rj, &ready);
	}
	error = 0;
	if (j->flags & JF_TIMEOUT) {
		j->flags &= ~JF_TIMEOUT;
		if (*j->comparam != IP_STOP_TIMEOUT) {
			FUNC7(j, "%s: timed out", j->comline);
			FUNC4(j);
			error = -1;
		} else if (verbose > 0)
			FUNC6(j, "timed out\n");
	} else if (j->pstatus != 0) {
		if (FUNC2(j->pstatus))
			FUNC7(j, "%s: exited on signal %d",
			    j->comline, FUNC3(j->pstatus));
		else
			FUNC7(j, "%s: failed", j->comline);
		j->pstatus = 0;
		FUNC4(j);
		error = -1;
	}
	FUNC5(j->comline);
	j->comline = NULL;
	return error;
}