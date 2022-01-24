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
 struct option FUNC0 () ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_stash_clear_usage ; 
 int FUNC4 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv, const char *prefix)
{
	struct option options[] = {
		FUNC0()
	};

	argc = FUNC4(argc, argv, prefix, options,
			     git_stash_clear_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);

	if (argc)
		return FUNC3(FUNC1("git stash clear with parameters is "
			       "unimplemented"));

	return FUNC2();
}