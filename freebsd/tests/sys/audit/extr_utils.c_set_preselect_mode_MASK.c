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
typedef  int /*<<< orphan*/  au_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDITPIPE_FLUSH ; 
 int /*<<< orphan*/  AUDITPIPE_GET_QLIMIT_MAX ; 
 int AUDITPIPE_PRESELECT_MODE_LOCAL ; 
 int /*<<< orphan*/  AUDITPIPE_SET_PRESELECT_FLAGS ; 
 int /*<<< orphan*/  AUDITPIPE_SET_PRESELECT_MODE ; 
 int /*<<< orphan*/  AUDITPIPE_SET_PRESELECT_NAFLAGS ; 
 int /*<<< orphan*/  AUDITPIPE_SET_QLIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int filedesc, au_mask_t *fmask)
{
	int qlimit_max;
	int fmode = AUDITPIPE_PRESELECT_MODE_LOCAL;

	/* Set local preselection mode for auditing */
	if (FUNC1(filedesc, AUDITPIPE_SET_PRESELECT_MODE, &fmode) < 0)
		FUNC0("Preselection mode: %s", FUNC2(errno));

	/* Set local preselection flag corresponding to the audit_event */
	if (FUNC1(filedesc, AUDITPIPE_SET_PRESELECT_FLAGS, fmask) < 0)
		FUNC0("Preselection flag: %s", FUNC2(errno));

	/* Set local preselection flag for non-attributable audit_events */
	if (FUNC1(filedesc, AUDITPIPE_SET_PRESELECT_NAFLAGS, fmask) < 0)
		FUNC0("Preselection naflag: %s", FUNC2(errno));

	/* Query the maximum possible queue length limit for auditpipe */
	if (FUNC1(filedesc, AUDITPIPE_GET_QLIMIT_MAX, &qlimit_max) < 0)
		FUNC0("Query max-limit: %s", FUNC2(errno));

	/* Set the queue length limit as obtained from previous step */
	if (FUNC1(filedesc, AUDITPIPE_SET_QLIMIT, &qlimit_max) < 0)
		FUNC0("Set max-qlimit: %s", FUNC2(errno));

	/* This removes any outstanding record on the auditpipe */
	if (FUNC1(filedesc, AUDITPIPE_FLUSH) < 0)
		FUNC0("Auditpipe flush: %s", FUNC2(errno));
}