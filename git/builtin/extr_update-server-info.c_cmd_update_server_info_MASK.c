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
 struct option FUNC1 () ; 
 struct option FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int FUNC4 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  update_server_info_usage ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	int force = 0;
	struct option options[] = {
		FUNC2(&force, FUNC0("update the info files from scratch"), 0),
		FUNC1()
	};

	FUNC3(git_default_config, NULL);
	argc = FUNC4(argc, argv, prefix, options,
			     update_server_info_usage, 0);
	if (argc > 0)
		FUNC6(update_server_info_usage, options);

	return !!FUNC5(force);
}