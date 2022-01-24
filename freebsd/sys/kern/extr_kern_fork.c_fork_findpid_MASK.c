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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int RFHIGHPID ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int lastpid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int pid_max ; 
 int /*<<< orphan*/  proc_id_grpidmap ; 
 int /*<<< orphan*/  proc_id_pidmap ; 
 int /*<<< orphan*/  proc_id_reapmap ; 
 int /*<<< orphan*/  proc_id_sessidmap ; 
 int /*<<< orphan*/  procid_lock ; 
 int randompid ; 

__attribute__((used)) static int
FUNC8(int flags)
{
	pid_t result;
	int trypid, random;

	/*
	 * Avoid calling arc4random with procid_lock held.
	 */
	random = 0;
	if (FUNC1(randompid))
		random = FUNC2() % randompid;

	FUNC6(&procid_lock);

	trypid = lastpid + 1;
	if (flags & RFHIGHPID) {
		if (trypid < 10)
			trypid = 10;
	} else {
		trypid += random;
	}
retry:
	if (trypid >= pid_max)
		trypid = 2;

	FUNC3(&proc_id_pidmap, trypid, pid_max, &result);
	if (result == -1) {
		FUNC0(trypid != 2, ("unexpectedly ran out of IDs"));
		trypid = 2;
		goto retry;
	}
	if (FUNC5(&proc_id_grpidmap, result) ||
	    FUNC5(&proc_id_sessidmap, result) ||
	    FUNC5(&proc_id_reapmap, result)) {
		trypid = result + 1;
		goto retry;
	}

	/*
	 * RFHIGHPID does not mess with the lastpid counter during boot.
	 */
	if ((flags & RFHIGHPID) == 0)
		lastpid = result;

	FUNC4(&proc_id_pidmap, result);
	FUNC7(&procid_lock);

	return (result);
}