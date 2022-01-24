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
struct apply_state {int check_index; int apply; scalar_t__ apply_verbosity; int /*<<< orphan*/  saved_warn_routine; int /*<<< orphan*/  saved_error_routine; scalar_t__ unsafe_paths; scalar_t__ ita_only; scalar_t__ cached; scalar_t__ fake_ancestor; scalar_t__ check; scalar_t__ summary; scalar_t__ numstat; scalar_t__ diffstat; scalar_t__ apply_with_reject; scalar_t__ threeway; } ;
struct TYPE_2__ {int /*<<< orphan*/  have_repository; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  mute_routine ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* startup_info ; 
 scalar_t__ verbosity_normal ; 
 scalar_t__ verbosity_silent ; 
 scalar_t__ verbosity_verbose ; 

int FUNC6(struct apply_state *state, int force_apply)
{
	int is_not_gitdir = !startup_info->have_repository;

	if (state->apply_with_reject && state->threeway)
		return FUNC1(FUNC0("--reject and --3way cannot be used together."));
	if (state->cached && state->threeway)
		return FUNC1(FUNC0("--cached and --3way cannot be used together."));
	if (state->threeway) {
		if (is_not_gitdir)
			return FUNC1(FUNC0("--3way outside a repository"));
		state->check_index = 1;
	}
	if (state->apply_with_reject) {
		state->apply = 1;
		if (state->apply_verbosity == verbosity_normal)
			state->apply_verbosity = verbosity_verbose;
	}
	if (!force_apply && (state->diffstat || state->numstat || state->summary || state->check || state->fake_ancestor))
		state->apply = 0;
	if (state->check_index && is_not_gitdir)
		return FUNC1(FUNC0("--index outside a repository"));
	if (state->cached) {
		if (is_not_gitdir)
			return FUNC1(FUNC0("--cached outside a repository"));
		state->check_index = 1;
	}
	if (state->ita_only && (state->check_index || is_not_gitdir))
		state->ita_only = 0;
	if (state->check_index)
		state->unsafe_paths = 0;

	if (state->apply_verbosity <= verbosity_silent) {
		state->saved_error_routine = FUNC2();
		state->saved_warn_routine = FUNC3();
		FUNC4(mute_routine);
		FUNC5(mute_routine);
	}

	return 0;
}