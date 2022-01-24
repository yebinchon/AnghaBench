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
 int /*<<< orphan*/  AUTOREBASE_ALWAYS ; 
 int /*<<< orphan*/  AUTOREBASE_LOCAL ; 
 int /*<<< orphan*/  AUTOREBASE_NEVER ; 
 int /*<<< orphan*/  AUTOREBASE_REMOTE ; 
 int /*<<< orphan*/  BRANCH_TRACK_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  autorebase ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  git_branch_track ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(const char *var, const char *value)
{
	if (!FUNC5(var, "branch.autosetupmerge")) {
		if (value && !FUNC4(value, "always")) {
			git_branch_track = BRANCH_TRACK_ALWAYS;
			return 0;
		}
		git_branch_track = FUNC3(var, value);
		return 0;
	}
	if (!FUNC5(var, "branch.autosetuprebase")) {
		if (!value)
			return FUNC1(var);
		else if (!FUNC5(value, "never"))
			autorebase = AUTOREBASE_NEVER;
		else if (!FUNC5(value, "local"))
			autorebase = AUTOREBASE_LOCAL;
		else if (!FUNC5(value, "remote"))
			autorebase = AUTOREBASE_REMOTE;
		else if (!FUNC5(value, "always"))
			autorebase = AUTOREBASE_ALWAYS;
		else
			return FUNC2(FUNC0("malformed value for %s"), var);
		return 0;
	}

	/* Add other config variables here and to Documentation/config.txt. */
	return 0;
}