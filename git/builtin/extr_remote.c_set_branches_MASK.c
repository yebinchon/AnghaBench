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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_remote_setbranches_usage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char const**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv)
{
	int add_mode = 0;
	struct option options[] = {
		FUNC1('\0', "add", &add_mode, FUNC0("add branch")),
		FUNC2()
	};

	argc = FUNC5(argc, argv, NULL, options,
			     builtin_remote_setbranches_usage, 0);
	if (argc == 0) {
		FUNC4(FUNC3("no remote specified"));
		FUNC7(builtin_remote_setbranches_usage, options);
	}
	argv[argc] = NULL;

	return FUNC6(argv[0], argv + 1, add_mode);
}