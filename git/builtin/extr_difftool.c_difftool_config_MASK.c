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
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  trust_exit_code ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *cb)
{
	if (!FUNC2(var, "difftool.trustexitcode")) {
		trust_exit_code = FUNC0(var, value);
		return 0;
	}

	return FUNC1(var, value, cb);
}