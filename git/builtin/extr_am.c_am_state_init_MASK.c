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
struct am_state {int prec; int threeway; int utf8; int message_id; char* sign_commit; int /*<<< orphan*/  git_apply_opts; int /*<<< orphan*/  scissors; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCISSORS_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct am_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct am_state *state)
{
	int gpgsign;

	FUNC3(state, 0, sizeof(*state));

	state->dir = FUNC2("rebase-apply");

	state->prec = 4;

	FUNC1("am.threeway", &state->threeway);

	state->utf8 = 1;

	FUNC1("am.messageid", &state->message_id);

	state->scissors = SCISSORS_UNSET;

	FUNC0(&state->git_apply_opts);

	if (!FUNC1("commit.gpgsign", &gpgsign))
		state->sign_commit = gpgsign ? "" : NULL;
}