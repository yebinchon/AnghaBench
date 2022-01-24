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
struct string_list {int dummy; } ;
struct receive_hook_feed_state {int skip_broken; int /*<<< orphan*/  buf; struct string_list const* push_options; struct command* cmd; } ;
struct command {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct receive_hook_feed_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,scalar_t__ (*) (struct receive_hook_feed_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),struct receive_hook_feed_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct command *commands,
			    const char *hook_name,
			    int skip_broken,
			    const struct string_list *push_options)
{
	struct receive_hook_feed_state state;
	int status;

	FUNC2(&state.buf, 0);
	state.cmd = commands;
	state.skip_broken = skip_broken;
	if (FUNC0(&state, NULL, NULL))
		return 0;
	state.cmd = commands;
	state.push_options = push_options;
	status = FUNC1(hook_name, feed_receive_hook, &state);
	FUNC3(&state.buf);
	return status;
}