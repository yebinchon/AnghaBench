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
struct dir_struct {int dummy; } ;
typedef  int /*<<< orphan*/  dir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dir_struct*,char const*,int,char const**) ; 
 int /*<<< orphan*/  check_ignore_options ; 
 int FUNC2 (struct dir_struct*,char const*) ; 
 int /*<<< orphan*/  check_ignore_usage ; 
 int /*<<< orphan*/  FUNC3 (struct dir_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dir_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_index ; 
 scalar_t__ nul_term_line ; 
 int FUNC8 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ quiet ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct dir_struct*) ; 
 scalar_t__ show_non_matching ; 
 scalar_t__ stdin_paths ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbose ; 

int FUNC11(int argc, const char **argv, const char *prefix)
{
	int num_ignored;
	struct dir_struct dir;

	FUNC5(git_default_config, NULL);

	argc = FUNC8(argc, argv, prefix, check_ignore_options,
			     check_ignore_usage, 0);

	if (stdin_paths) {
		if (argc > 0)
			FUNC4(FUNC0("cannot specify pathnames with --stdin"));
	} else {
		if (nul_term_line)
			FUNC4(FUNC0("-z only makes sense with --stdin"));
		if (argc == 0)
			FUNC4(FUNC0("no path specified"));
	}
	if (quiet) {
		if (argc > 1)
			FUNC4(FUNC0("--quiet is only valid with a single pathname"));
		if (verbose)
			FUNC4(FUNC0("cannot have both --quiet and --verbose"));
	}
	if (show_non_matching && !verbose)
		FUNC4(FUNC0("--non-matching is only valid with --verbose"));

	/* read_cache() is only necessary so we can watch out for submodules. */
	if (!no_index && FUNC9() < 0)
		FUNC4(FUNC0("index file corrupt"));

	FUNC7(&dir, 0, sizeof(dir));
	FUNC10(&dir);

	if (stdin_paths) {
		num_ignored = FUNC2(&dir, prefix);
	} else {
		num_ignored = FUNC1(&dir, prefix, argc, argv);
		FUNC6(stdout, "ignore to stdout");
	}

	FUNC3(&dir);

	return !num_ignored;
}