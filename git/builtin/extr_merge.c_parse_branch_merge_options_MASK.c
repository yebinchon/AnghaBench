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
 int /*<<< orphan*/  FUNC0 (char const**,char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  branch ; 
 int /*<<< orphan*/  builtin_merge_options ; 
 int /*<<< orphan*/  builtin_merge_usage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char const***) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(char *bmo)
{
	const char **argv;
	int argc;

	if (!bmo)
		return;
	argc = FUNC6(bmo, &argv);
	if (argc < 0)
		FUNC3(FUNC2("Bad branch.%s.mergeoptions string: %s"), branch,
		    FUNC2(FUNC7(argc)));
	FUNC1(argv, argc + 2);
	FUNC0(argv + 1, argv, argc + 1);
	argc++;
	argv[0] = "branch.*.mergeoptions";
	FUNC5(argc, argv, NULL, builtin_merge_options,
		      builtin_merge_usage, 0);
	FUNC4(argv);
}