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
struct stash_info {scalar_t__ is_stash_ref; int /*<<< orphan*/  b_commit; } ;
struct option {int dummy; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct option FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,struct stash_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct stash_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stash_info*) ; 
 scalar_t__ FUNC8 (struct stash_info*,int,char const**) ; 
 int /*<<< orphan*/  git_stash_branch_usage ; 
 char const* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	int ret;
	const char *branch = NULL;
	struct stash_info info;
	struct child_process cp = CHILD_PROCESS_INIT;
	struct option options[] = {
		FUNC0()
	};

	argc = FUNC10(argc, argv, prefix, options,
			     git_stash_branch_usage, 0);

	if (!argc) {
		FUNC6(stderr, FUNC1("No branch name specified"));
		return -1;
	}

	branch = argv[0];

	if (FUNC8(&info, argc - 1, argv + 1))
		return -1;

	cp.git_cmd = 1;
	FUNC3(&cp.args, "checkout", "-b", NULL);
	FUNC2(&cp.args, branch);
	FUNC2(&cp.args, FUNC9(&info.b_commit));
	ret = FUNC11(&cp);
	if (!ret)
		ret = FUNC4(prefix, &info, 1, 0);
	if (!ret && info.is_stash_ref)
		ret = FUNC5(&info, 0);

	FUNC7(&info);

	return ret;
}