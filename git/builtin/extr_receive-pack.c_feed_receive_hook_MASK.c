#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buf; size_t len; } ;
struct receive_hook_feed_state {TYPE_1__ buf; struct command* cmd; scalar_t__ skip_broken; } ;
struct command {struct command* next; int /*<<< orphan*/  ref_name; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  old_oid; scalar_t__ did_not_exist; scalar_t__ error_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(void *state_, const char **bufp, size_t *sizep)
{
	struct receive_hook_feed_state *state = state_;
	struct command *cmd = state->cmd;

	while (cmd &&
	       state->skip_broken && (cmd->error_string || cmd->did_not_exist))
		cmd = cmd->next;
	if (!cmd)
		return -1; /* EOF */
	FUNC2(&state->buf);
	FUNC1(&state->buf, "%s %s %s\n",
		    FUNC0(&cmd->old_oid), FUNC0(&cmd->new_oid),
		    cmd->ref_name);
	state->cmd = cmd->next;
	if (bufp) {
		*bufp = state->buf.buf;
		*sizep = state->buf.len;
	}
	return 0;
}