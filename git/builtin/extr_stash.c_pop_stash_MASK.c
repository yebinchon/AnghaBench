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
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct stash_info*) ; 
 int FUNC6 (char const*,struct stash_info*,int,int) ; 
 int FUNC7 (struct stash_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct stash_info*) ; 
 scalar_t__ FUNC9 (struct stash_info*,int,char const**) ; 
 int /*<<< orphan*/  git_stash_pop_usage ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	int ret;
	int index = 0;
	int quiet = 0;
	struct stash_info info;
	struct option options[] = {
		FUNC3(&quiet, FUNC0("be quiet, only report errors")),
		FUNC1(0, "index", &index,
			 FUNC0("attempt to recreate the index")),
		FUNC2()
	};

	argc = FUNC10(argc, argv, prefix, options,
			     git_stash_pop_usage, 0);

	if (FUNC9(&info, argc, argv))
		return -1;

	FUNC5(&info);
	if ((ret = FUNC6(prefix, &info, index, quiet)))
		FUNC11(FUNC4("The stash entry is kept in case "
			    "you need it again."));
	else
		ret = FUNC7(&info, quiet);

	FUNC8(&info);
	return ret;
}