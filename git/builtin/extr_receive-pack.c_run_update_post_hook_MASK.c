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
struct command {char const* ref_name; scalar_t__ did_not_exist; scalar_t__ error_string; struct command* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  argc; } ;
struct child_process {int no_stdin; int stdout_to_stderr; int err; char* trace2_hook_name; TYPE_1__ args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (struct child_process*) ; 
 scalar_t__ use_sideband ; 

__attribute__((used)) static void FUNC5(struct command *commands)
{
	struct command *cmd;
	struct child_process proc = CHILD_PROCESS_INIT;
	const char *hook;

	hook = FUNC2("post-update");
	if (!hook)
		return;

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (cmd->error_string || cmd->did_not_exist)
			continue;
		if (!proc.args.argc)
			FUNC0(&proc.args, hook);
		FUNC0(&proc.args, cmd->ref_name);
	}
	if (!proc.args.argc)
		return;

	proc.no_stdin = 1;
	proc.stdout_to_stderr = 1;
	proc.err = use_sideband ? -1 : 0;
	proc.trace2_hook_name = "post-update";

	if (!FUNC4(&proc)) {
		if (use_sideband)
			FUNC1(proc.err, -1, NULL);
		FUNC3(&proc);
	}
}