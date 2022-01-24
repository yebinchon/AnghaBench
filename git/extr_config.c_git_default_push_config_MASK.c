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
 int /*<<< orphan*/  PUSH_DEFAULT_CURRENT ; 
 int /*<<< orphan*/  PUSH_DEFAULT_MATCHING ; 
 int /*<<< orphan*/  PUSH_DEFAULT_NOTHING ; 
 int /*<<< orphan*/  PUSH_DEFAULT_SIMPLE ; 
 int /*<<< orphan*/  PUSH_DEFAULT_UPSTREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  push_default ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value)
{
	if (!FUNC3(var, "push.default")) {
		if (!value)
			return FUNC1(var);
		else if (!FUNC3(value, "nothing"))
			push_default = PUSH_DEFAULT_NOTHING;
		else if (!FUNC3(value, "matching"))
			push_default = PUSH_DEFAULT_MATCHING;
		else if (!FUNC3(value, "simple"))
			push_default = PUSH_DEFAULT_SIMPLE;
		else if (!FUNC3(value, "upstream"))
			push_default = PUSH_DEFAULT_UPSTREAM;
		else if (!FUNC3(value, "tracking")) /* deprecated */
			push_default = PUSH_DEFAULT_UPSTREAM;
		else if (!FUNC3(value, "current"))
			push_default = PUSH_DEFAULT_CURRENT;
		else {
			FUNC2(FUNC0("malformed value for %s: %s"), var, value);
			return FUNC2(FUNC0("must be one of nothing, matching, simple, "
				       "upstream or current"));
		}
		return 0;
	}

	/* Add other config variables here and to Documentation/config.txt. */
	return 0;
}