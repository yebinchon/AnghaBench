#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*) ; 
 char* FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct child_process*) ; 
 TYPE_1__ stash_index_path ; 

__attribute__((used)) static int FUNC7(struct object_id *u_tree)
{
	int res;
	struct child_process cp = CHILD_PROCESS_INIT;

	/*
	 * We need to run restore files from a given index, but without
	 * affecting the current index, so we use GIT_INDEX_FILE with
	 * run_command to fork processes that will not interfere.
	 */
	cp.git_cmd = 1;
	FUNC0(&cp.args, "read-tree");
	FUNC0(&cp.args, FUNC4(u_tree));
	FUNC1(&cp.env_array, "GIT_INDEX_FILE=%s",
			 stash_index_path.buf);
	if (FUNC6(&cp)) {
		FUNC5(stash_index_path.buf);
		return -1;
	}

	FUNC3(&cp);
	cp.git_cmd = 1;
	FUNC2(&cp.args, "checkout-index", "--all", NULL);
	FUNC1(&cp.env_array, "GIT_INDEX_FILE=%s",
			 stash_index_path.buf);

	res = FUNC6(&cp);
	FUNC5(stash_index_path.buf);
	return res;
}