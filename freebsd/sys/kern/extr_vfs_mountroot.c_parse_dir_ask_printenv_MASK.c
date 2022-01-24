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
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *var)
{
	char *val;

	val = FUNC1(var);
	if (val != NULL) {
		FUNC2("  %s=%s\n", var, val);
		FUNC0(val);
	}
}