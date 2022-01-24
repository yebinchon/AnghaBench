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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_notes_get_ref_usage ; 
 int FUNC4 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC7(int argc, const char **argv, const char *prefix)
{
	struct option options[] = { FUNC0() };
	argc = FUNC4(argc, argv, prefix, options,
			     git_notes_get_ref_usage, 0);

	if (argc) {
		FUNC3(FUNC1("too many parameters"));
		FUNC6(git_notes_get_ref_usage, options);
	}

	FUNC5(FUNC2());
	return 0;
}