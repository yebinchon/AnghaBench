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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char*,char const**) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC5(void)
{
	const char *value;

	if (FUNC2("pull.ff", &value))
		return NULL;

	switch (FUNC3(value)) {
	case 0:
		return "--no-ff";
	case 1:
		return "--ff";
	}

	if (!FUNC4(value, "only"))
		return "--ff-only";

	FUNC1(FUNC0("Invalid value for pull.ff: %s"), value);
}