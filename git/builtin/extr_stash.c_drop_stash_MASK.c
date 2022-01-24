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
struct stash_info {int dummy; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stash_info*) ; 
 int FUNC4 (struct stash_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stash_info*) ; 
 scalar_t__ FUNC6 (struct stash_info*,int,char const**) ; 
 int /*<<< orphan*/  git_stash_drop_usage ; 
 int FUNC7 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv, const char *prefix)
{
	int ret;
	int quiet = 0;
	struct stash_info info;
	struct option options[] = {
		FUNC2(&quiet, FUNC0("be quiet, only report errors")),
		FUNC1()
	};

	argc = FUNC7(argc, argv, prefix, options,
			     git_stash_drop_usage, 0);

	if (FUNC6(&info, argc, argv))
		return -1;

	FUNC3(&info);

	ret = FUNC4(&info, quiet);
	FUNC5(&info);
	return ret;
}