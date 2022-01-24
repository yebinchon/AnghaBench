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
 int /*<<< orphan*/  builtin_merge_ours_usage ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int argc, const char **argv, const char *prefix)
{
	if (argc == 2 && !FUNC4(argv[1], "-h"))
		FUNC5(builtin_merge_ours_usage);

	/*
	 * The contents of the current index becomes the tree we
	 * commit.  The index must match HEAD, or this merge cannot go
	 * through.
	 */
	if (FUNC3() < 0)
		FUNC0("read_cache failed");
	if (FUNC2(the_repository, "HEAD", NULL, 0))
		FUNC1(2);
	FUNC1(0);
}