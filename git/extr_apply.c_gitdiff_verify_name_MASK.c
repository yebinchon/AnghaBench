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
struct gitdiff_data {char* linenr; int /*<<< orphan*/  p_value; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int DIFF_NEW_NAME ; 
 int /*<<< orphan*/  TERM_TAB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct gitdiff_data *state,
			       const char *line,
			       int isnull,
			       char **name,
			       int side)
{
	if (!*name && !isnull) {
		*name = FUNC2(state->root, line, NULL, state->p_value, TERM_TAB);
		return 0;
	}

	if (*name) {
		char *another;
		if (isnull)
			return FUNC1(FUNC0("git apply: bad git-diff - expected /dev/null, got %s on line %d"),
				     *name, state->linenr);
		another = FUNC2(state->root, line, NULL, state->p_value, TERM_TAB);
		if (!another || FUNC5(another, *name)) {
			FUNC3(another);
			return FUNC1((side == DIFF_NEW_NAME) ?
			    FUNC0("git apply: bad git-diff - inconsistent new filename on line %d") :
			    FUNC0("git apply: bad git-diff - inconsistent old filename on line %d"), state->linenr);
		}
		FUNC3(another);
	} else {
		if (!FUNC4(line))
			return FUNC1(FUNC0("git apply: bad git-diff - expected /dev/null on line %d"), state->linenr);
	}

	return 0;
}