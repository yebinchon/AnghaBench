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
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const**,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(const char *name)
{
	const char *argv[] = { "fetch", name, NULL, NULL };
	if (verbose) {
		argv[1] = "-v";
		argv[2] = name;
	}
	FUNC2(FUNC0("Updating %s"), name);
	if (FUNC3(argv, RUN_GIT_CMD))
		return FUNC1(FUNC0("Could not fetch %s"), name);
	return 0;
}