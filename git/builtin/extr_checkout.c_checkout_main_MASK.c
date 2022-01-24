#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct checkout_opts {int overwrite_ignore; char const* prefix; int show_progress; scalar_t__ track; int merge; int discard_changes; char* ignore_unmerged_opt; int ignore_unmerged; char const* new_branch; char const* new_branch_force; char const* new_orphan_branch; int overlay_mode; int checkout_index; int checkout_worktree; char* from_treeish; TYPE_1__ pathspec; scalar_t__ patch_mode; int /*<<< orphan*/  branch_exists; scalar_t__ force; int /*<<< orphan*/  writeout_stage; scalar_t__ force_detach; int /*<<< orphan*/  empty_pathspec_ok; scalar_t__ accept_pathspec; int /*<<< orphan*/  source_tree; scalar_t__ accept_ref; scalar_t__ dwim_new_local_branch; scalar_t__ conflict_style; scalar_t__ quiet; } ;
struct branch_info {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  new_branch_info ;

/* Variables and functions */
 scalar_t__ BRANCH_TRACK_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int /*<<< orphan*/  PATHSPEC_PREFIX_ORIGIN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct checkout_opts*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ advice_checkout_ambiguous_remote_branch_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (struct checkout_opts*,struct branch_info*) ; 
 int FUNC5 (struct checkout_opts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (char*,struct object_id*) ; 
 int /*<<< orphan*/  git_checkout_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct checkout_opts*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct branch_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int,char const**,int,struct branch_info*,struct checkout_opts*,struct object_id*,int*) ; 
 int FUNC13 (int,char const**,char const*,struct option*,char const* const*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC15 (struct branch_info*,struct checkout_opts*,struct object_id*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 char* FUNC18 (char const*,char) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(int argc, const char **argv, const char *prefix,
			 struct checkout_opts *opts, struct option *options,
			 const char * const usagestr[])
{
	struct branch_info new_branch_info;
	int dwim_remotes_matched = 0;
	int parseopt_flags = 0;

	FUNC11(&new_branch_info, 0, sizeof(new_branch_info));
	opts->overwrite_ignore = 1;
	opts->prefix = prefix;
	opts->show_progress = -1;

	FUNC8(git_checkout_config, opts);

	opts->track = BRANCH_TRACK_UNSPECIFIED;

	if (!opts->accept_pathspec && !opts->accept_ref)
		FUNC0("make up your mind, you need to take _something_");
	if (opts->accept_pathspec && opts->accept_ref)
		parseopt_flags = PARSE_OPT_KEEP_DASHDASH;

	argc = FUNC13(argc, argv, prefix, options,
			     usagestr, parseopt_flags);

	if (opts->show_progress < 0) {
		if (opts->quiet)
			opts->show_progress = 0;
		else
			opts->show_progress = FUNC10(2);
	}

	if (opts->conflict_style) {
		opts->merge = 1; /* implied */
		FUNC9("merge.conflictstyle", opts->conflict_style, NULL);
	}
	if (opts->force) {
		opts->discard_changes = 1;
		opts->ignore_unmerged_opt = "--force";
		opts->ignore_unmerged = 1;
	}

	if ((!!opts->new_branch + !!opts->new_branch_force + !!opts->new_orphan_branch) > 1)
		FUNC6(FUNC2("-b, -B and --orphan are mutually exclusive"));

	if (opts->overlay_mode == 1 && opts->patch_mode)
		FUNC6(FUNC2("-p and --overlay are mutually exclusive"));

	if (opts->checkout_index >= 0 || opts->checkout_worktree >= 0) {
		if (opts->checkout_index < 0)
			opts->checkout_index = 0;
		if (opts->checkout_worktree < 0)
			opts->checkout_worktree = 0;
	} else {
		if (opts->checkout_index < 0)
			opts->checkout_index = -opts->checkout_index - 1;
		if (opts->checkout_worktree < 0)
			opts->checkout_worktree = -opts->checkout_worktree - 1;
	}
	if (opts->checkout_index < 0 || opts->checkout_worktree < 0)
		FUNC0("these flags should be non-negative by now");
	/*
	 * convenient shortcut: "git restore --staged" equals
	 * "git restore --staged --source HEAD"
	 */
	if (!opts->from_treeish && opts->checkout_index && !opts->checkout_worktree)
		opts->from_treeish = "HEAD";

	/*
	 * From here on, new_branch will contain the branch to be checked out,
	 * and new_branch_force and new_orphan_branch will tell us which one of
	 * -b/-B/--orphan is being used.
	 */
	if (opts->new_branch_force)
		opts->new_branch = opts->new_branch_force;

	if (opts->new_orphan_branch)
		opts->new_branch = opts->new_orphan_branch;

	/* --track without -b/-B/--orphan should DWIM */
	if (opts->track != BRANCH_TRACK_UNSPECIFIED && !opts->new_branch) {
		const char *argv0 = argv[0];
		if (!argc || !FUNC19(argv0, "--"))
			FUNC6(FUNC2("--track needs a branch name"));
		FUNC16(argv0, "refs/", &argv0);
		FUNC16(argv0, "remotes/", &argv0);
		argv0 = FUNC18(argv0, '/');
		if (!argv0 || !argv0[1])
			FUNC6(FUNC2("missing branch name; try -b"));
		opts->new_branch = argv0 + 1;
	}

	/*
	 * Extract branch name from command line arguments, so
	 * all that is left is pathspecs.
	 *
	 * Handle
	 *
	 *  1) git checkout <tree> -- [<paths>]
	 *  2) git checkout -- [<paths>]
	 *  3) git checkout <something> [<paths>]
	 *
	 * including "last branch" syntax and DWIM-ery for names of
	 * remote branches, erroring out for invalid or ambiguous cases.
	 */
	if (argc && opts->accept_ref) {
		struct object_id rev;
		int dwim_ok =
			!opts->patch_mode &&
			opts->dwim_new_local_branch &&
			opts->track == BRANCH_TRACK_UNSPECIFIED &&
			!opts->new_branch;
		int n = FUNC12(argc, argv, dwim_ok,
					     &new_branch_info, opts, &rev,
					     &dwim_remotes_matched);
		argv += n;
		argc -= n;
	} else if (!opts->accept_ref && opts->from_treeish) {
		struct object_id rev;

		if (FUNC7(opts->from_treeish, &rev))
			FUNC6(FUNC2("could not resolve %s"), opts->from_treeish);

		FUNC15(&new_branch_info,
						      opts, &rev,
						      opts->from_treeish);

		if (!opts->source_tree)
			FUNC6(FUNC2("reference is not a tree: %s"), opts->from_treeish);
	}

	if (opts->accept_pathspec && !opts->empty_pathspec_ok && !argc &&
	    !opts->patch_mode)	/* patch mode is special */
		FUNC6(FUNC2("you must specify path(s) to restore"));

	if (argc) {
		FUNC14(&opts->pathspec, 0,
			       opts->patch_mode ? PATHSPEC_PREFIX_ORIGIN : 0,
			       prefix, argv);

		if (!opts->pathspec.nr)
			FUNC6(FUNC2("invalid path specification"));

		/*
		 * Try to give more helpful suggestion.
		 * new_branch && argc > 1 will be caught later.
		 */
		if (opts->new_branch && argc == 1)
			FUNC6(FUNC2("'%s' is not a commit and a branch '%s' cannot be created from it"),
				argv[0], opts->new_branch);

		if (opts->force_detach)
			FUNC6(FUNC2("git checkout: --detach does not take a path argument '%s'"),
			    argv[0]);

		if (1 < !!opts->writeout_stage + !!opts->force + !!opts->merge)
			FUNC6(FUNC2("git checkout: --ours/--theirs, --force and --merge are incompatible when\n"
			      "checking out of the index."));
	}

	if (opts->new_branch) {
		struct strbuf buf = STRBUF_INIT;

		if (opts->new_branch_force)
			opts->branch_exists = FUNC20(opts->new_branch, &buf);
		else
			opts->branch_exists =
				FUNC21(opts->new_branch, &buf, 0);
		FUNC17(&buf);
	}

	FUNC1(opts);
	if (opts->patch_mode || opts->pathspec.nr) {
		int ret = FUNC5(opts, new_branch_info.name);
		if (ret && dwim_remotes_matched > 1 &&
		    advice_checkout_ambiguous_remote_branch_name)
			FUNC3(FUNC2("'%s' matched more than one remote tracking branch.\n"
				 "We found %d remotes with a reference that matched. So we fell back\n"
				 "on trying to resolve the argument as a path, but failed there too!\n"
				 "\n"
				 "If you meant to check out a remote tracking branch on, e.g. 'origin',\n"
				 "you can do so by fully qualifying the name with the --track option:\n"
				 "\n"
				 "    git checkout --track origin/<name>\n"
				 "\n"
				 "If you'd like to always have checkouts of an ambiguous <name> prefer\n"
				 "one remote, e.g. the 'origin' remote, consider setting\n"
				 "checkout.defaultRemote=origin in your config."),
			       argv[0],
			       dwim_remotes_matched);
		return ret;
	} else {
		return FUNC4(opts, &new_branch_info);
	}
}