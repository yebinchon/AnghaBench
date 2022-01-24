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
 struct option FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_remote_prune_usage ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv)
{
	int dry_run = 0, result = 0;
	struct option options[] = {
		FUNC2(&dry_run, FUNC0("dry run")),
		FUNC1()
	};

	argc = FUNC3(argc, argv, NULL, options, builtin_remote_prune_usage,
			     0);

	if (argc < 1)
		FUNC5(builtin_remote_prune_usage, options);

	for (; argc; argc--, argv++)
		result |= FUNC4(*argv, dry_run);

	return result;
}