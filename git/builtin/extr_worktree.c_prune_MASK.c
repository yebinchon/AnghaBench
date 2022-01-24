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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIME_MAX ; 
 int /*<<< orphan*/  expire ; 
 int FUNC5 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  show_only ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  worktree_usage ; 

__attribute__((used)) static int FUNC8(int ac, const char **av, const char *prefix)
{
	struct option options[] = {
		FUNC3(&show_only, FUNC0("do not remove, show only")),
		FUNC4(&verbose, FUNC0("report pruned working trees")),
		FUNC2(0, "expire", &expire,
				FUNC0("expire working trees older than <time>")),
		FUNC1()
	};

	expire = TIME_MAX;
	ac = FUNC5(ac, av, prefix, options, worktree_usage, 0);
	if (ac)
		FUNC7(worktree_usage, options);
	FUNC6();
	return 0;
}