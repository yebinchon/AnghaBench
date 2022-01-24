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
typedef  int /*<<< orphan*/  timestamp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

int FUNC4(timestamp_t *timestamp, const char *var, const char *value)
{
	if (!value)
		return FUNC1(var);
	if (FUNC3(value, timestamp))
		return FUNC2(FUNC0("'%s' for '%s' is not a valid timestamp"),
			     value, var);
	return 0;
}