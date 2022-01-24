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
struct worktree {int /*<<< orphan*/  id; } ;
struct add_opts {int force; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct worktree* FUNC4 (struct worktree**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct worktree**) ; 
 struct worktree** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct worktree*) ; 

__attribute__((used)) static void FUNC9(const char *path, const struct add_opts *opts)
{
	struct worktree **worktrees;
	struct worktree *wt;
	int locked;

	if (FUNC3(path) && !FUNC7(path))
		FUNC2(FUNC0("'%s' already exists"), path);

	worktrees = FUNC6(0);
	/*
	 * find_worktree()'s suffix matching may undesirably find the main
	 * rather than a linked worktree (for instance, when the basenames
	 * of the main worktree and the one being created are the same).
	 * We're only interested in linked worktrees, so skip the main
	 * worktree with +1.
	 */
	wt = FUNC4(worktrees + 1, NULL, path);
	if (!wt)
		goto done;

	locked = !!FUNC8(wt);
	if ((!locked && opts->force) || (locked && opts->force > 1)) {
		if (FUNC1(wt->id))
		    FUNC2(FUNC0("unable to re-add worktree '%s'"), path);
		goto done;
	}

	if (locked)
		FUNC2(FUNC0("'%s' is a missing but locked worktree;\nuse 'add -f -f' to override, or 'unlock' and 'prune' or 'remove' to clear"), path);
	else
		FUNC2(FUNC0("'%s' is a missing but already registered worktree;\nuse 'add -f' to override, or 'prune' or 'remove' to clear"), path);

done:
	FUNC5(worktrees);
}