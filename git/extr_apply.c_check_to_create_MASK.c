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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct apply_state {scalar_t__ cached; TYPE_1__* repo; scalar_t__ check_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EXISTS_IN_INDEX ; 
 int EXISTS_IN_WORKTREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct apply_state *state,
			   const char *new_name,
			   int ok_if_exists)
{
	struct stat nst;

	if (state->check_index &&
	    FUNC3(state->repo->index, new_name, FUNC6(new_name)) >= 0 &&
	    !ok_if_exists)
		return EXISTS_IN_INDEX;
	if (state->cached)
		return 0;

	if (!FUNC5(new_name, &nst)) {
		if (FUNC0(nst.st_mode) || ok_if_exists)
			return 0;
		/*
		 * A leading component of new_name might be a symlink
		 * that is going to be removed with this patch, but
		 * still pointing at somewhere that has the path.
		 * In such a case, path "new_name" does not exist as
		 * far as git is concerned.
		 */
		if (FUNC2(new_name, FUNC6(new_name)))
			return 0;

		return EXISTS_IN_WORKTREE;
	} else if (!FUNC4(errno)) {
		return FUNC1("%s", new_name);
	}
	return 0;
}