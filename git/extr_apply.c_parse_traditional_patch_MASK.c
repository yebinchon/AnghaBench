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
struct patch {int is_new; int is_delete; char* new_name; char* old_name; } ;
struct apply_state {int p_value_known; int p_value; int /*<<< orphan*/  linenr; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct apply_state*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct apply_state *state,
				   const char *first,
				   const char *second,
				   struct patch *patch)
{
	char *name;

	first += 4;	/* skip "--- " */
	second += 4;	/* skip "+++ " */
	if (!state->p_value_known) {
		int p, q;
		p = FUNC4(state, first);
		q = FUNC4(state, second);
		if (p < 0) p = q;
		if (0 <= p && p == q) {
			state->p_value = p;
			state->p_value_known = 1;
		}
	}
	if (FUNC6(first)) {
		patch->is_new = 1;
		patch->is_delete = 0;
		name = FUNC2(&state->root, second, NULL, state->p_value);
		patch->new_name = name;
	} else if (FUNC6(second)) {
		patch->is_new = 0;
		patch->is_delete = 1;
		name = FUNC2(&state->root, first, NULL, state->p_value);
		patch->old_name = name;
	} else {
		char *first_name;
		first_name = FUNC2(&state->root, first, NULL, state->p_value);
		name = FUNC2(&state->root, second, first_name, state->p_value);
		FUNC3(first_name);
		if (FUNC5(first)) {
			patch->is_new = 1;
			patch->is_delete = 0;
			patch->new_name = name;
		} else if (FUNC5(second)) {
			patch->is_new = 0;
			patch->is_delete = 1;
			patch->old_name = name;
		} else {
			patch->old_name = name;
			patch->new_name = FUNC7(name);
		}
	}
	if (!name)
		return FUNC1(FUNC0("unable to find filename in patch at line %d"), state->linenr);

	return 0;
}