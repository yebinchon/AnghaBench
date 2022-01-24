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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  ignore_add_errors ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *cb)
{
	if (!FUNC2(var, "add.ignoreerrors") ||
	    !FUNC2(var, "add.ignore-errors")) {
		ignore_add_errors = FUNC0(var, value);
		return 0;
	}
	return FUNC1(var, value, cb);
}