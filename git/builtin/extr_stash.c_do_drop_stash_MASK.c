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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct stash_info {TYPE_1__ revision; int /*<<< orphan*/  w_commit; } ;
struct child_process {int git_cmd; int no_stdout; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ref_stash ; 
 int FUNC8 (struct child_process*) ; 

__attribute__((used)) static int FUNC9(struct stash_info *info, int quiet)
{
	int ret;
	struct child_process cp_reflog = CHILD_PROCESS_INIT;
	struct child_process cp = CHILD_PROCESS_INIT;

	/*
	 * reflog does not provide a simple function for deleting refs. One will
	 * need to be added to avoid implementing too much reflog code here
	 */

	cp_reflog.git_cmd = 1;
	FUNC3(&cp_reflog.args, "reflog", "delete", "--updateref",
			 "--rewrite", NULL);
	FUNC1(&cp_reflog.args, info->revision.buf);
	ret = FUNC8(&cp_reflog);
	if (!ret) {
		if (!quiet)
			FUNC7(FUNC0("Dropped %s (%s)"), info->revision.buf,
				  FUNC6(&info->w_commit));
	} else {
		return FUNC5(FUNC0("%s: Could not drop stash entry"),
			     info->revision.buf);
	}

	/*
	 * This could easily be replaced by get_oid, but currently it will throw
	 * a fatal error when a reflog is empty, which we can not recover from.
	 */
	cp.git_cmd = 1;
	/* Even though --quiet is specified, rev-parse still outputs the hash */
	cp.no_stdout = 1;
	FUNC3(&cp.args, "rev-parse", "--verify", "--quiet", NULL);
	FUNC2(&cp.args, "%s@{0}", ref_stash);
	ret = FUNC8(&cp);

	/* do_clear_stash if we just dropped the last stash entry */
	if (ret)
		FUNC4();

	return 0;
}