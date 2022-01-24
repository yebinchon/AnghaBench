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
struct option {int dummy; } ;

/* Variables and functions */
 struct option FUNC0 () ; 
 int FUNC1 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_worktree_config ; 
 int FUNC3 (int,char const**,char const*) ; 
 int FUNC4 (int,char const**,char const*) ; 
 int FUNC5 (int,char const**,char const*) ; 
 int FUNC6 (int,char const**,char const*) ; 
 int FUNC7 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  worktree_usage ; 

int FUNC11(int ac, const char **av, const char *prefix)
{
	struct option options[] = {
		FUNC0()
	};

	FUNC2(git_worktree_config, NULL);

	if (ac < 2)
		FUNC10(worktree_usage, options);
	if (!prefix)
		prefix = "";
	if (!FUNC8(av[1], "add"))
		return FUNC1(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "prune"))
		return FUNC6(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "list"))
		return FUNC3(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "lock"))
		return FUNC4(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "unlock"))
		return FUNC9(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "move"))
		return FUNC5(ac - 1, av + 1, prefix);
	if (!FUNC8(av[1], "remove"))
		return FUNC7(ac - 1, av + 1, prefix);
	FUNC10(worktree_usage, options);
}