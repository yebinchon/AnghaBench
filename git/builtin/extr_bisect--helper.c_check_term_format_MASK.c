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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*,char*,char*,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *term, const char *orig_term)
{
	int res;
	char *new_term = FUNC6("refs/bisect/%s", term);

	res = FUNC1(new_term, 0);
	FUNC3(new_term);

	if (res)
		return FUNC2(FUNC0("'%s' is not a valid term"), term);

	if (FUNC4(term, "help", "start", "skip", "next", "reset",
			"visualize", "view", "replay", "log", "run", "terms", NULL))
		return FUNC2(FUNC0("can't use the builtin command '%s' as a term"), term);

	/*
	 * In theory, nothing prevents swapping completely good and bad,
	 * but this situation could be confusing and hasn't been tested
	 * enough. Forbid it for now.
	 */

	if ((FUNC5(orig_term, "bad") && FUNC4(term, "bad", "new", NULL)) ||
		 (FUNC5(orig_term, "good") && FUNC4(term, "good", "old", NULL)))
		return FUNC2(FUNC0("can't change the meaning of the term '%s'"), term);

	return 0;
}