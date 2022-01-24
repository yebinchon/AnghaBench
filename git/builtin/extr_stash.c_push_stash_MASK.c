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
struct pathspec {int dummy; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (unsigned char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC4 (char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int PATHSPEC_PREFER_FULL ; 
 int PATHSPEC_PREFIX_ORIGIN ; 
 int FUNC6 (struct pathspec*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  git_stash_push_usage ; 
 int FUNC7 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pathspec*,int /*<<< orphan*/ ,int,char const*,char const**) ; 

__attribute__((used)) static int FUNC9(int argc, const char **argv, const char *prefix)
{
	int keep_index = -1;
	int patch_mode = 0;
	int include_untracked = 0;
	int quiet = 0;
	const char *stash_msg = NULL;
	struct pathspec ps;
	struct option options[] = {
		FUNC1('k', "keep-index", &keep_index,
			 FUNC0("keep index")),
		FUNC1('p', "patch", &patch_mode,
			 FUNC0("stash in patch mode")),
		FUNC5(&quiet, FUNC0("quiet mode")),
		FUNC1('u', "include-untracked", &include_untracked,
			 FUNC0("include untracked files in stash")),
		FUNC3('a', "all", &include_untracked,
			    FUNC0("include ignore files"), 2),
		FUNC4('m', "message", &stash_msg, FUNC0("message"),
			   FUNC0("stash message")),
		FUNC2()
	};

	if (argc)
		argc = FUNC7(argc, argv, prefix, options,
				     git_stash_push_usage,
				     0);

	FUNC8(&ps, 0, PATHSPEC_PREFER_FULL | PATHSPEC_PREFIX_ORIGIN,
		       prefix, argv);
	return FUNC6(&ps, stash_msg, quiet, keep_index, patch_mode,
			     include_untracked);
}