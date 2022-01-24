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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_resolve_conflict ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

int FUNC4(const char *me)
{
	if (!FUNC3(me, "cherry-pick"))
		FUNC2(FUNC0("Cherry-picking is not possible because you have unmerged files."));
	else if (!FUNC3(me, "commit"))
		FUNC2(FUNC0("Committing is not possible because you have unmerged files."));
	else if (!FUNC3(me, "merge"))
		FUNC2(FUNC0("Merging is not possible because you have unmerged files."));
	else if (!FUNC3(me, "pull"))
		FUNC2(FUNC0("Pulling is not possible because you have unmerged files."));
	else if (!FUNC3(me, "revert"))
		FUNC2(FUNC0("Reverting is not possible because you have unmerged files."));
	else
		FUNC2(FUNC0("It is not possible to %s because you have unmerged files."),
			me);

	if (advice_resolve_conflict)
		/*
		 * Message used both when 'git commit' fails and when
		 * other commands doing a merge do.
		 */
		FUNC1(FUNC0("Fix them up in the work tree, and then use 'git add/rm <file>'\n"
			 "as appropriate to mark resolution and make a commit."));
	return -1;
}