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
struct patch {struct patch* next; } ;
struct apply_state {scalar_t__ apply_verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct apply_state*,struct patch*) ; 
 int /*<<< orphan*/  FUNC2 (struct apply_state*,struct patch*) ; 
 int /*<<< orphan*/  FUNC3 (struct apply_state*,struct patch*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct patch*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity_normal ; 

__attribute__((used)) static int FUNC5(struct apply_state *state, struct patch *patch)
{
	int err = 0;

	FUNC3(state, patch);
	FUNC2(state, patch);
	while (patch) {
		int res;
		if (state->apply_verbosity > verbosity_normal)
			FUNC4(stderr,
				       FUNC0("Checking patch %s..."), patch);
		res = FUNC1(state, patch);
		if (res == -128)
			return -128;
		err |= res;
		patch = patch->next;
	}
	return err;
}