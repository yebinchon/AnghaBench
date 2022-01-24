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
struct command {char* ref_name; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  old_oid; } ;
struct child_process {int no_stdin; int stdout_to_stderr; int err; char const** argv; char* trace2_hook_name; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (struct child_process*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct child_process*) ; 
 scalar_t__ use_sideband ; 

__attribute__((used)) static int FUNC5(struct command *cmd)
{
	const char *argv[5];
	struct child_process proc = CHILD_PROCESS_INIT;
	int code;

	argv[0] = FUNC1("update");
	if (!argv[0])
		return 0;

	argv[1] = cmd->ref_name;
	argv[2] = FUNC3(&cmd->old_oid);
	argv[3] = FUNC3(&cmd->new_oid);
	argv[4] = NULL;

	proc.no_stdin = 1;
	proc.stdout_to_stderr = 1;
	proc.err = use_sideband ? -1 : 0;
	proc.argv = argv;
	proc.trace2_hook_name = "update";

	code = FUNC4(&proc);
	if (code)
		return code;
	if (use_sideband)
		FUNC0(proc.err, -1, NULL);
	return FUNC2(&proc);
}