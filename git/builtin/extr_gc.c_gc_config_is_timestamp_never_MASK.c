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
typedef  scalar_t__ timestamp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const**) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(const char *var)
{
	const char *value;
	timestamp_t expire;

	if (!FUNC2(var, &value) && value) {
		if (FUNC3(value, &expire))
			FUNC1(FUNC0("failed to parse '%s' value '%s'"), var, value);
		return expire == 0;
	}
	return 0;
}