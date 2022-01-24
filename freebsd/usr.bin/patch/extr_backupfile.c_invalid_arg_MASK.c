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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(const char *kind, const char *value, int problem)
{
	FUNC0(stderr, "patch: ");
	if (problem == -1)
		FUNC0(stderr, "invalid");
	else			/* Assume -2. */
		FUNC0(stderr, "ambiguous");
	FUNC0(stderr, " %s `%s'\n", kind, value);
}