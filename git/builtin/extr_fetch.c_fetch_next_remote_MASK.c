#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct parallel_fetch_state {scalar_t__ next; int /*<<< orphan*/  argv; TYPE_2__* remotes; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;
struct TYPE_4__ {scalar_t__ nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* string; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int FUNC4(struct child_process *cp, struct strbuf *out,
			     void *cb, void **task_cb)
{
	struct parallel_fetch_state *state = cb;
	char *remote;

	if (state->next < 0 || state->next >= state->remotes->nr)
		return 0;

	remote = state->remotes->items[state->next++].string;
	*task_cb = remote;

	FUNC2(&cp->args, state->argv);
	FUNC1(&cp->args, remote);
	cp->git_cmd = 1;

	if (verbosity >= 0)
		FUNC3(FUNC0("Fetching %s\n"), remote);

	return 1;
}