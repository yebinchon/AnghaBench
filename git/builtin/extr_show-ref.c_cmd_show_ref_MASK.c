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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ exclude_arg ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exclude_existing_arg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  found_match ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const** pattern ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct object_id*) ; 
 scalar_t__ show_head ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  show_ref ; 
 int /*<<< orphan*/  show_ref_options ; 
 int /*<<< orphan*/  show_ref_usage ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 scalar_t__ verify ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	FUNC3(git_default_config, NULL);

	argc = FUNC5(argc, argv, prefix, show_ref_options,
			     show_ref_usage, 0);

	if (exclude_arg)
		return FUNC1(exclude_existing_arg);

	pattern = argv;
	if (!*pattern)
		pattern = NULL;

	if (verify) {
		if (!pattern)
			FUNC0("--verify requires a reference");
		while (*pattern) {
			struct object_id oid;

			if ((FUNC8(*pattern, "refs/") || !FUNC9(*pattern, "HEAD")) &&
			    !FUNC6(*pattern, &oid)) {
				FUNC7(*pattern, &oid);
			}
			else if (!quiet)
				FUNC0("'%s' - not a valid ref", *pattern);
			else
				return 1;
			pattern++;
		}
		return 0;
	}

	if (show_head)
		FUNC4(show_ref, NULL);
	FUNC2(show_ref, NULL);
	if (!found_match) {
		if (verify && !quiet)
			FUNC0("No match");
		return 1;
	}
	return 0;
}