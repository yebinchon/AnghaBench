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
struct stat {scalar_t__ st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_FSMONITOR_VALID ; 
 int /*<<< orphan*/  CE_SKIP_WORKTREE ; 
 int /*<<< orphan*/  CE_VALID ; 
 scalar_t__ MARK_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int errno ; 
 scalar_t__ force_remove ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mark_fsmonitor_only ; 
 scalar_t__ mark_skip_worktree_only ; 
 scalar_t__ mark_valid_only ; 
 scalar_t__ FUNC4 (char const*,struct stat*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(const char *path)
{
	int stat_errno = 0;
	struct stat st;

	if (mark_valid_only || mark_skip_worktree_only || force_remove ||
	    mark_fsmonitor_only)
		st.st_mode = 0;
	else if (FUNC2(path, &st) < 0) {
		st.st_mode = 0;
		stat_errno = errno;
	} /* else stat is valid */

	if (!FUNC7(path, st.st_mode)) {
		FUNC1(stderr, "Ignoring path %s\n", path);
		return;
	}
	if (mark_valid_only) {
		if (FUNC3(path, CE_VALID, mark_valid_only == MARK_FLAG))
			FUNC0("Unable to mark file %s", path);
		return;
	}
	if (mark_skip_worktree_only) {
		if (FUNC3(path, CE_SKIP_WORKTREE, mark_skip_worktree_only == MARK_FLAG))
			FUNC0("Unable to mark file %s", path);
		return;
	}
	if (mark_fsmonitor_only) {
		if (FUNC3(path, CE_FSMONITOR_VALID, mark_fsmonitor_only == MARK_FLAG))
			FUNC0("Unable to mark file %s", path);
		return;
	}

	if (force_remove) {
		if (FUNC5(path))
			FUNC0("git update-index: unable to remove %s", path);
		FUNC6("remove '%s'", path);
		return;
	}
	if (FUNC4(path, &st, stat_errno))
		FUNC0("Unable to process path %s", path);
	FUNC6("add '%s'", path);
}