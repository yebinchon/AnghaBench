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
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct option FUNC0 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  git_stash_list_usage ; 
 int FUNC4 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* ref_stash ; 
 int FUNC6 (struct child_process*) ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	struct option options[] = {
		FUNC0()
	};

	argc = FUNC4(argc, argv, prefix, options,
			     git_stash_list_usage,
			     PARSE_OPT_KEEP_UNKNOWN);

	if (!FUNC5(ref_stash))
		return 0;

	cp.git_cmd = 1;
	FUNC2(&cp.args, "log", "--format=%gd: %gs", "-g",
			 "--first-parent", "-m", NULL);
	FUNC3(&cp.args, argv);
	FUNC1(&cp.args, ref_stash);
	FUNC1(&cp.args, "--");
	return FUNC6(&cp);
}