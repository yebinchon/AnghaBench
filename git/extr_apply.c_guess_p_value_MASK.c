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
struct apply_state {int /*<<< orphan*/  prefix; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static int FUNC6(struct apply_state *state, const char *nameline)
{
	char *name, *cp;
	int val = -1;

	if (FUNC3(nameline))
		return -1;
	name = FUNC1(&state->root, nameline, NULL, 0);
	if (!name)
		return -1;
	cp = FUNC5(name, '/');
	if (!cp)
		val = 0;
	else if (state->prefix) {
		/*
		 * Does it begin with "a/$our-prefix" and such?  Then this is
		 * very likely to apply to our directory.
		 */
		if (FUNC4(name, state->prefix))
			val = FUNC0(state->prefix);
		else {
			cp++;
			if (FUNC4(cp, state->prefix))
				val = FUNC0(state->prefix) + 1;
		}
	}
	FUNC2(name);
	return val;
}