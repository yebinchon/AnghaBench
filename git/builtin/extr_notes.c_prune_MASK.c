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
struct notes_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int NOTES_PRUNE_DRYRUN ; 
 int NOTES_PRUNE_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct notes_tree*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct notes_tree*) ; 
 int /*<<< orphan*/  git_notes_prune_usage ; 
 struct notes_tree* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct notes_tree*,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	struct notes_tree *t;
	int show_only = 0, verbose = 0;
	struct option options[] = {
		FUNC2(&show_only, FUNC0("do not remove, show only")),
		FUNC3(&verbose, FUNC0("report pruned notes")),
		FUNC1()
	};

	argc = FUNC9(argc, argv, prefix, options, git_notes_prune_usage,
			     0);

	if (argc) {
		FUNC6(FUNC4("too many parameters"));
		FUNC11(git_notes_prune_usage, options);
	}

	t = FUNC8("prune", NOTES_INIT_WRITABLE);

	FUNC10(t, (verbose ? NOTES_PRUNE_VERBOSE : 0) |
		(show_only ? NOTES_PRUNE_VERBOSE|NOTES_PRUNE_DRYRUN : 0) );
	if (!show_only)
		FUNC5(the_repository, t,
			     "Notes removed by 'git notes prune'");
	FUNC7(t);
	return 0;
}