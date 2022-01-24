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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  git_patch_id_config ; 
 int /*<<< orphan*/  patch_id_usage ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int argc, const char **argv, const char *prefix)
{
	int stable = -1;

	FUNC1(git_patch_id_config, &stable);

	/* If nothing is set, default to unstable. */
	if (stable < 0)
		stable = 0;

	if (argc == 2 && !FUNC2(argv[1], "--stable"))
		stable = 1;
	else if (argc == 2 && !FUNC2(argv[1], "--unstable"))
		stable = 0;
	else if (argc != 1)
		FUNC3(patch_id_usage);

	FUNC0(stable);
	return 0;
}