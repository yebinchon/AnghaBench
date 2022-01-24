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
struct repository {int dummy; } ;
struct apply_state {char const* prefix; int apply; char line_termination; int p_value; int squelch_whitespace_errors; int linenr; int /*<<< orphan*/  root; int /*<<< orphan*/  symlink_changes; int /*<<< orphan*/  limit_by_name; int /*<<< orphan*/  fn_table; int /*<<< orphan*/  ws_ignore_action; int /*<<< orphan*/  ws_error_action; int /*<<< orphan*/  p_context; struct repository* repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ apply_default_ignorewhitespace ; 
 scalar_t__ apply_default_whitespace ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ignore_ws_none ; 
 int /*<<< orphan*/  FUNC1 (struct apply_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct apply_state*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct apply_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  warn_on_ws_error ; 

int FUNC6(struct apply_state *state,
		     struct repository *repo,
		     const char *prefix)
{
	FUNC1(state, 0, sizeof(*state));
	state->prefix = prefix;
	state->repo = repo;
	state->apply = 1;
	state->line_termination = '\n';
	state->p_value = 1;
	state->p_context = UINT_MAX;
	state->squelch_whitespace_errors = 5;
	state->ws_error_action = warn_on_ws_error;
	state->ws_ignore_action = ignore_ws_none;
	state->linenr = 1;
	FUNC5(&state->fn_table, 0);
	FUNC5(&state->limit_by_name, 0);
	FUNC5(&state->symlink_changes, 0);
	FUNC4(&state->root, 0);

	FUNC0();
	if (apply_default_whitespace && FUNC3(state, apply_default_whitespace))
		return -1;
	if (apply_default_ignorewhitespace && FUNC2(state, apply_default_ignorewhitespace))
		return -1;
	return 0;
}