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
struct wt_status_state {scalar_t__ bisect_in_progress; scalar_t__ revert_in_progress; scalar_t__ cherry_pick_in_progress; scalar_t__ rebase_in_progress; scalar_t__ rebase_interactive_in_progress; scalar_t__ am_in_progress; scalar_t__ merge_in_progress; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wt_status_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct wt_status_state state;

	FUNC2(&state, 0, sizeof(state));
	FUNC4(the_repository, &state, 0);

	if (state.merge_in_progress)
		FUNC1(FUNC0("cannot switch branch while merging\n"
		      "Consider \"git merge --quit\" "
		      "or \"git worktree add\"."));
	if (state.am_in_progress)
		FUNC1(FUNC0("cannot switch branch in the middle of an am session\n"
		      "Consider \"git am --quit\" "
		      "or \"git worktree add\"."));
	if (state.rebase_interactive_in_progress || state.rebase_in_progress)
		FUNC1(FUNC0("cannot switch branch while rebasing\n"
		      "Consider \"git rebase --quit\" "
		      "or \"git worktree add\"."));
	if (state.cherry_pick_in_progress)
		FUNC1(FUNC0("cannot switch branch while cherry-picking\n"
		      "Consider \"git cherry-pick --quit\" "
		      "or \"git worktree add\"."));
	if (state.revert_in_progress)
		FUNC1(FUNC0("cannot switch branch while reverting\n"
		      "Consider \"git revert --quit\" "
		      "or \"git worktree add\"."));
	if (state.bisect_in_progress)
		FUNC3(FUNC0("you are switching branch while bisecting"));
}