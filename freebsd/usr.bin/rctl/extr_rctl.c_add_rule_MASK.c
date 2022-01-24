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
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ errno ; 
 int FUNC1 (char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *rule, const char *unexpanded_rule)
{
	int error;

	error = FUNC1(rule, FUNC2(rule) + 1, NULL, 0);
	if (error != 0) {
		if (errno == ENOSYS)
			FUNC0();
		FUNC3("failed to add rule '%s'", unexpanded_rule);
	}

	return (error);
}