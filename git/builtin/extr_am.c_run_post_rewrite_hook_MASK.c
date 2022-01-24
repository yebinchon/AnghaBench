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
struct child_process {int stdout_to_stderr; char* trace2_hook_name; int /*<<< orphan*/  in; int /*<<< orphan*/  args; } ;
struct am_state {int dummy; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct am_state const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct am_state *state)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	const char *hook = FUNC3("post-rewrite");
	int ret;

	if (!hook)
		return 0;

	FUNC1(&cp.args, hook);
	FUNC1(&cp.args, "rebase");

	cp.in = FUNC5(FUNC0(state, "rewritten"), O_RDONLY);
	cp.stdout_to_stderr = 1;
	cp.trace2_hook_name = "post-rewrite";

	ret = FUNC4(&cp);

	FUNC2(cp.in);
	return ret;
}