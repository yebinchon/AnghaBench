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
typedef  enum rebase_type { ____Placeholder_rebase_type } rebase_type ;

/* Variables and functions */
 int REBASE_FALSE ; 
 int REBASE_INTERACTIVE ; 
 int REBASE_INVALID ; 
 int REBASE_MERGES ; 
 int REBASE_PRESERVE ; 
 int REBASE_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static enum rebase_type FUNC5(const char *key, const char *value,
		int fatal)
{
	int v = FUNC3(value);

	if (!v)
		return REBASE_FALSE;
	else if (v > 0)
		return REBASE_TRUE;
	else if (!FUNC4(value, "preserve") || !FUNC4(value, "p"))
		return REBASE_PRESERVE;
	else if (!FUNC4(value, "merges") || !FUNC4(value, "m"))
		return REBASE_MERGES;
	else if (!FUNC4(value, "interactive") || !FUNC4(value, "i"))
		return REBASE_INTERACTIVE;
	/*
	 * Please update _git_config() in git-completion.bash when you
	 * add new rebase modes.
	 */

	if (fatal)
		FUNC1(FUNC0("Invalid value for %s: %s"), key, value);
	else
		FUNC2(FUNC0("Invalid value for %s: %s"), key, value);

	return REBASE_INVALID;
}