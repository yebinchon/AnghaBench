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
struct worktree {int /*<<< orphan*/  path; } ;
struct child_process {int git_cmd; int out; int /*<<< orphan*/  dir; int /*<<< orphan*/  env; int /*<<< orphan*/  args; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (struct child_process*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC9 (struct worktree*) ; 
 int FUNC10 (int,char*,int) ; 

__attribute__((used)) static void FUNC11(struct worktree *wt,
				 const char *original_path)
{
	struct argv_array child_env = ARGV_ARRAY_INIT;
	struct child_process cp;
	char buf[1];
	int ret;

	/*
	 * Until we sort this out, all submodules are "dirty" and
	 * will abort this function.
	 */
	FUNC9(wt);

	FUNC1(&child_env, "%s=%s/.git",
			 GIT_DIR_ENVIRONMENT, wt->path);
	FUNC1(&child_env, "%s=%s",
			 GIT_WORK_TREE_ENVIRONMENT, wt->path);
	FUNC7(&cp, 0, sizeof(cp));
	FUNC2(&cp.args, "status",
			 "--porcelain", "--ignore-submodules=none",
			 NULL);
	cp.env = child_env.argv;
	cp.git_cmd = 1;
	cp.dir = wt->path;
	cp.out = -1;
	ret = FUNC8(&cp);
	if (ret)
		FUNC5(FUNC0("failed to run 'git status' on '%s'"),
			  original_path);
	ret = FUNC10(cp.out, buf, sizeof(buf));
	if (ret)
		FUNC4(FUNC0("'%s' contains modified or untracked files, use --force to delete it"),
		    original_path);
	FUNC3(cp.out);
	ret = FUNC6(&cp);
	if (ret)
		FUNC5(FUNC0("failed to run 'git status' on '%s', code %d"),
			  original_path, ret);
}