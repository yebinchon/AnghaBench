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
 int /*<<< orphan*/  HAVE_THREADS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char const*,void*) ; 
 int num_threads ; 
 int /*<<< orphan*/  recurse_submodules ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value, void *cb)
{
	int st = FUNC5(var, value, cb);
	if (FUNC2(var, value, cb) < 0)
		st = -1;

	if (!FUNC6(var, "grep.threads")) {
		num_threads = FUNC4(var, value);
		if (num_threads < 0)
			FUNC1(FUNC0("invalid number of threads specified (%d) for %s"),
			    num_threads, var);
		else if (!HAVE_THREADS && num_threads > 1) {
			/*
			 * TRANSLATORS: %s is the configuration
			 * variable for tweaking threads, currently
			 * grep.threads
			 */
			FUNC7(FUNC0("no threads support, ignoring %s"), var);
			num_threads = 1;
		}
	}

	if (!FUNC6(var, "submodule.recurse"))
		recurse_submodules = FUNC3(var, value);

	return st;
}