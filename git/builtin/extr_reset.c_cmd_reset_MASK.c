#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_2__ object; } ;
struct pathspec {scalar_t__ nr; } ;
struct option {char* member_2; char* member_4; char* member_5; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_10__ {int /*<<< orphan*/ * empty_tree; } ;
struct TYPE_9__ {int updated_skipworktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int HARD ; 
 int KEEP ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int MERGE ; 
 int MIXED ; 
 int NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option const FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option const FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_DASHDASH ; 
 int /*<<< orphan*/  PARSE_OPT_OPTARG ; 
 int REFRESH_INDEX_DELAY_WARNING_IN_MS ; 
 int REFRESH_IN_PORCELAIN ; 
 int REFRESH_QUIET ; 
 int SOFT ; 
 char* FUNC5 (char*) ; 
 scalar_t__ advice_reset_quiet_warning ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (char*,struct object_id*) ; 
 scalar_t__ FUNC10 (char const*,struct object_id*) ; 
 scalar_t__ FUNC11 (char const*,struct object_id*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int*) ; 
 int /*<<< orphan*/  git_reset_config ; 
 int /*<<< orphan*/  git_reset_usage ; 
 int /*<<< orphan*/  FUNC15 (struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 () ; 
 struct commit* FUNC17 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC18 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  option_parse_recurse_submodules_worktree_updater ; 
 int /*<<< orphan*/  FUNC19 (struct pathspec*,char const**,char const*,int,char const**) ; 
 int FUNC20 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tree* FUNC21 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC22 (struct commit*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 scalar_t__ FUNC24 (struct pathspec*,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct object_id*,int,int) ; 
 int FUNC28 (char const*,struct object_id*) ; 
 char** reset_type_names ; 
 int FUNC29 (char const*,char*,struct pathspec*) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char const*,char*) ; 
 TYPE_5__* the_hash_algo ; 
 TYPE_3__ the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 scalar_t__ FUNC34 (TYPE_3__*,struct lock_file*,int /*<<< orphan*/ ) ; 

int FUNC35(int argc, const char **argv, const char *prefix)
{
	int reset_type = NONE, update_ref_status = 0, quiet = 0;
	int patch_mode = 0, unborn;
	const char *rev;
	struct object_id oid;
	struct pathspec pathspec;
	int intent_to_add = 0;
	const struct option options[] = {
		FUNC4(&quiet, FUNC0("be quiet, only report errors")),
		FUNC3(0, "mixed", &reset_type,
						FUNC0("reset HEAD and index"), MIXED),
		FUNC3(0, "soft", &reset_type, FUNC0("reset only HEAD"), SOFT),
		FUNC3(0, "hard", &reset_type,
				FUNC0("reset HEAD, index and working tree"), HARD),
		FUNC3(0, "merge", &reset_type,
				FUNC0("reset HEAD, index and working tree"), MERGE),
		FUNC3(0, "keep", &reset_type,
				FUNC0("reset HEAD but keep local changes"), KEEP),
		{ OPTION_CALLBACK, 0, "recurse-submodules", NULL,
			    "reset", "control recursive updating of submodules",
			    PARSE_OPT_OPTARG, option_parse_recurse_submodules_worktree_updater },
		FUNC1('p', "patch", &patch_mode, FUNC0("select hunks interactively")),
		FUNC1('N', "intent-to-add", &intent_to_add,
				FUNC0("record only the fact that removed paths will be added later")),
		FUNC2()
	};

	FUNC13(git_reset_config, NULL);
	FUNC14("reset.quiet", &quiet);

	argc = FUNC20(argc, argv, prefix, options, git_reset_usage,
						PARSE_OPT_KEEP_DASHDASH);
	FUNC19(&pathspec, argv, prefix, patch_mode, &rev);

	unborn = !FUNC31(rev, "HEAD") && FUNC9("HEAD", &oid);
	if (unborn) {
		/* reset on unborn branch: treat as reset to empty tree */
		FUNC18(&oid, the_hash_algo->empty_tree);
	} else if (!pathspec.nr) {
		struct commit *commit;
		if (FUNC10(rev, &oid))
			FUNC6(FUNC5("Failed to resolve '%s' as a valid revision."), rev);
		commit = FUNC17(the_repository, &oid);
		if (!commit)
			FUNC6(FUNC5("Could not parse object '%s'."), rev);
		FUNC18(&oid, &commit->object.oid);
	} else {
		struct tree *tree;
		if (FUNC11(rev, &oid))
			FUNC6(FUNC5("Failed to resolve '%s' as a valid tree."), rev);
		tree = FUNC21(&oid);
		if (!tree)
			FUNC6(FUNC5("Could not parse object '%s'."), rev);
		FUNC18(&oid, &tree->object.oid);
	}

	if (patch_mode) {
		if (reset_type != NONE)
			FUNC6(FUNC5("--patch is incompatible with --{hard,mixed,soft}"));
		FUNC32("patch-interactive");
		return FUNC29(rev, "--patch=reset", &pathspec);
	}

	/* git reset tree [--] paths... can be used to
	 * load chosen paths from the tree into the index without
	 * affecting the working tree nor HEAD. */
	if (pathspec.nr) {
		if (reset_type == MIXED)
			FUNC33(FUNC5("--mixed with paths is deprecated; use 'git reset -- <paths>' instead."));
		else if (reset_type != NONE)
			FUNC6(FUNC5("Cannot do %s reset with paths."),
					FUNC5(reset_type_names[reset_type]));
	}
	if (reset_type == NONE)
		reset_type = MIXED; /* by default */

	if (pathspec.nr)
		FUNC32("path");
	else
		FUNC32(reset_type_names[reset_type]);

	if (reset_type != SOFT && (reset_type != MIXED || FUNC8()))
		FUNC30();

	if (reset_type == MIXED && FUNC16())
		FUNC6(FUNC5("%s reset is not allowed in a bare repository"),
		    FUNC5(reset_type_names[reset_type]));

	if (intent_to_add && reset_type != MIXED)
		FUNC6(FUNC5("-N can only be used with --mixed"));

	/* Soft reset does not touch the index file nor the working tree
	 * at all, but requires them in a good order.  Other resets reset
	 * the index file to the tree object we are switching to. */
	if (reset_type == SOFT || reset_type == KEEP)
		FUNC7(reset_type);

	if (reset_type != SOFT) {
		struct lock_file lock = LOCK_INIT;
		FUNC15(&lock, LOCK_DIE_ON_ERROR);
		if (reset_type == MIXED) {
			int flags = quiet ? REFRESH_QUIET : REFRESH_IN_PORCELAIN;
			if (FUNC24(&pathspec, &oid, intent_to_add))
				return 1;
			the_index.updated_skipworktree = 1;
			if (!quiet && FUNC8()) {
				uint64_t t_begin, t_delta_in_ms;

				t_begin = FUNC12();
				FUNC25(&the_index, flags, NULL, NULL,
					      FUNC5("Unstaged changes after reset:"));
				t_delta_in_ms = (FUNC12() - t_begin) / 1000000;
				if (advice_reset_quiet_warning && t_delta_in_ms > REFRESH_INDEX_DELAY_WARNING_IN_MS) {
					FUNC23(FUNC5("\nIt took %.2f seconds to enumerate unstaged changes after reset.  You can\n"
						"use '--quiet' to avoid this.  Set the config setting reset.quiet to true\n"
						"to make this the default.\n"), t_delta_in_ms / 1000.0);
				}
			}
		} else {
			int err = FUNC27(&oid, reset_type, quiet);
			if (reset_type == KEEP && !err)
				err = FUNC27(&oid, MIXED, quiet);
			if (err)
				FUNC6(FUNC5("Could not reset index file to revision '%s'."), rev);
		}

		if (FUNC34(&the_index, &lock, COMMIT_LOCK))
			FUNC6(FUNC5("Could not write new index file."));
	}

	if (!pathspec.nr && !unborn) {
		/* Any resets without paths update HEAD to the head being
		 * switched to, saving the previous head in ORIG_HEAD before. */
		update_ref_status = FUNC28(rev, &oid);

		if (reset_type == HARD && !update_ref_status && !quiet)
			FUNC22(FUNC17(the_repository, &oid));
	}
	if (!pathspec.nr)
		FUNC26(the_repository, 0);

	return update_ref_status;
}