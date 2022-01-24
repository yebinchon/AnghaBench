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
struct argv_array {int dummy; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* git_work_tree_cfg ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 (unsigned char*,struct argv_array*,char const*) ; 
 int /*<<< orphan*/  push_to_checkout_hook ; 
 char* FUNC7 (unsigned char*,struct argv_array*,char const*) ; 

__attribute__((used)) static const char *FUNC8(unsigned char *sha1)
{
	const char *retval;
	const char *work_tree = git_work_tree_cfg ? git_work_tree_cfg : "..";
	struct argv_array env = ARGV_ARRAY_INIT;

	if (FUNC5())
		return "denyCurrentBranch = updateInstead needs a worktree";

	FUNC2(&env, "GIT_DIR=%s", FUNC0(FUNC4()));

	if (!FUNC3(push_to_checkout_hook))
		retval = FUNC7(sha1, &env, work_tree);
	else
		retval = FUNC6(sha1, &env, work_tree);

	FUNC1(&env);
	return retval;
}