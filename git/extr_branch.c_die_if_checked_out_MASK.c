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
struct worktree {int /*<<< orphan*/  path; scalar_t__ is_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct worktree* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 

void FUNC4(const char *branch, int ignore_current_worktree)
{
	const struct worktree *wt;

	wt = FUNC2("HEAD", branch);
	if (!wt || (ignore_current_worktree && wt->is_current))
		return;
	FUNC3(branch, "refs/heads/", &branch);
	FUNC1(FUNC0("'%s' is already checked out at '%s'"),
	    branch, wt->path);
}