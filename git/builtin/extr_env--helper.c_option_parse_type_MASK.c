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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENV_HELPER_TYPE_BOOL ; 
 int /*<<< orphan*/  ENV_HELPER_TYPE_ULONG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cmdmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *arg,
			     int unset)
{
	if (!FUNC2(arg, "bool"))
		cmdmode = ENV_HELPER_TYPE_BOOL;
	else if (!FUNC2(arg, "ulong"))
		cmdmode = ENV_HELPER_TYPE_ULONG;
	else
		FUNC1(FUNC0("unrecognized --type argument, %s"), arg);

	return 0;
}