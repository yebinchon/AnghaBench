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
struct checkout_opts {int /*<<< orphan*/  diff_options; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *cb)
{
	if (!FUNC4(var, "diff.ignoresubmodules")) {
		struct checkout_opts *opts = cb;
		FUNC2(&opts->diff_options, value);
		return 0;
	}

	if (FUNC3(var, "submodule."))
		return FUNC0(var, value, NULL);

	return FUNC1(var, value, NULL);
}