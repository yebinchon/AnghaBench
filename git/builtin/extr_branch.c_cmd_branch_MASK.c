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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_sorting {int ignore_case; } ;
struct ref_format {char const* format; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct ref_filter {int kind; int abbrev; int detached; scalar_t__ merge; int ignore_case; char const** name_patterns; scalar_t__ verbose; scalar_t__ no_commit; TYPE_1__ points_at; scalar_t__ with_commit; } ;
struct option {char* member_2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; TYPE_1__* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct branch {char const* name; int /*<<< orphan*/  refname; } ;
typedef  int /*<<< orphan*/  filter ;
typedef  enum branch_track { ____Placeholder_branch_track } branch_track ;

/* Variables and functions */
 int BRANCH_TRACK_EXPLICIT ; 
 int BRANCH_TRACK_OVERRIDE ; 
 int DEFAULT_ABBREV ; 
 int FILTER_REFS_BRANCHES ; 
 int FILTER_REFS_DETACHED_HEAD ; 
 int FILTER_REFS_REMOTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC5 () ; 
 struct option FUNC6 (int /*<<< orphan*/ ) ; 
 struct option FUNC7 (struct ref_filter*,int /*<<< orphan*/ ) ; 
 struct option FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC9 (struct ref_filter*,int /*<<< orphan*/ ) ; 
 struct option FUNC10 (struct ref_sorting**) ; 
 struct option FUNC11 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC12 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct option FUNC13 (unsigned char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC14 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC15 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC16 (int*) ; 
 struct option FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC18 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC19 (int*,int /*<<< orphan*/ ) ; 
 struct option FUNC20 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_HIDDEN ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 scalar_t__ REF_FILTER_MERGED_NONE ; 
 struct ref_format REF_FORMAT_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 struct branch* FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (struct branch*) ; 
 int /*<<< orphan*/  branch_use_color ; 
 int /*<<< orphan*/  builtin_branch_usage ; 
 scalar_t__ colopts ; 
 int /*<<< orphan*/  FUNC24 (char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC26 (int,char const**,int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC28 (char const*) ; 
 int FUNC29 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__*,int) ; 
 int /*<<< orphan*/  git_branch_config ; 
 int git_branch_track ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,struct ref_sorting**) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char const* head ; 
 int /*<<< orphan*/  head_oid ; 
 int /*<<< orphan*/  FUNC34 (struct ref_filter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  output ; 
 int /*<<< orphan*/  parse_opt_object_name ; 
 int FUNC35 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (struct ref_filter*,struct ref_sorting*,struct ref_format*) ; 
 struct ref_sorting* FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 char* FUNC41 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (char*,int) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC45 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC46 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC47 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC48 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC51(int argc, const char **argv, const char *prefix)
{
	int delete = 0, rename = 0, copy = 0, force = 0, list = 0;
	int show_current = 0;
	int reflog = 0, edit_description = 0;
	int quiet = 0, unset_upstream = 0;
	const char *new_upstream = NULL;
	enum branch_track track;
	struct ref_filter filter;
	int icase = 0;
	static struct ref_sorting *sorting = NULL, **sorting_tail = &sorting;
	struct ref_format format = REF_FORMAT_INIT;

	struct option options[] = {
		FUNC6(FUNC0("Generic options")),
		FUNC20(&filter.verbose,
			FUNC0("show hash and subject, give twice for upstream branch")),
		FUNC19(&quiet, FUNC0("suppress informational messages")),
		FUNC11('t', "track",  &track, FUNC0("set up tracking mode (see git-pull(1))"),
			BRANCH_TRACK_EXPLICIT),
		FUNC12(0, "set-upstream", &track, FUNC0("do not use"),
			BRANCH_TRACK_OVERRIDE, PARSE_OPT_HIDDEN),
		FUNC13('u', "set-upstream-to", &new_upstream, FUNC0("upstream"), FUNC0("change the upstream info")),
		FUNC2(0, "unset-upstream", &unset_upstream, FUNC0("Unset the upstream info")),
		FUNC17(&branch_use_color, FUNC0("use colored output")),
		FUNC11('r', "remotes",     &filter.kind, FUNC0("act on remote-tracking branches"),
			FILTER_REFS_REMOTES),
		FUNC4(&filter.with_commit, FUNC0("print only branches that contain the commit")),
		FUNC8(&filter.no_commit, FUNC0("print only branches that don't contain the commit")),
		FUNC14(&filter.with_commit, FUNC0("print only branches that contain the commit")),
		FUNC15(&filter.no_commit, FUNC0("print only branches that don't contain the commit")),
		FUNC16(&filter.abbrev),

		FUNC6(FUNC0("Specific git-branch actions:")),
		FUNC11('a', "all", &filter.kind, FUNC0("list both remote-tracking and local branches"),
			FILTER_REFS_REMOTES | FILTER_REFS_BRANCHES),
		FUNC1('d', "delete", &delete, FUNC0("delete fully merged branch"), 1),
		FUNC1('D', NULL, &delete, FUNC0("delete branch (even if not merged)"), 2),
		FUNC1('m', "move", &rename, FUNC0("move/rename a branch and its reflog"), 1),
		FUNC1('M', NULL, &rename, FUNC0("move/rename a branch, even if target exists"), 2),
		FUNC1('c', "copy", &copy, FUNC0("copy a branch and its reflog"), 1),
		FUNC1('C', NULL, &copy, FUNC0("copy a branch, even if target exists"), 2),
		FUNC2('l', "list", &list, FUNC0("list branch names")),
		FUNC2(0, "show-current", &show_current, FUNC0("show current branch name")),
		FUNC2(0, "create-reflog", &reflog, FUNC0("create the branch's reflog")),
		FUNC2(0, "edit-description", &edit_description,
			 FUNC0("edit the description for the branch")),
		FUNC18(&force, FUNC0("force creation, move/rename, deletion"), PARSE_OPT_NOCOMPLETE),
		FUNC7(&filter, FUNC0("print only branches that are merged")),
		FUNC9(&filter, FUNC0("print only branches that are not merged")),
		FUNC3(0, "column", &colopts, FUNC0("list branches in columns")),
		FUNC10(sorting_tail),
		{
			OPTION_CALLBACK, 0, "points-at", &filter.points_at, FUNC0("object"),
			FUNC0("print only branches of the object"), 0, parse_opt_object_name
		},
		FUNC2('i', "ignore-case", &icase, FUNC0("sorting and filtering are case insensitive")),
		FUNC13(  0 , "format", &format.format, FUNC0("format"), FUNC0("format to use for the output")),
		FUNC5(),
	};

	FUNC43();

	FUNC34(&filter, 0, sizeof(filter));
	filter.kind = FILTER_REFS_BRANCHES;
	filter.abbrev = -1;

	if (argc == 2 && !FUNC48(argv[1], "-h"))
		FUNC50(builtin_branch_usage, options);

	FUNC32(git_branch_config, sorting_tail);

	track = git_branch_track;

	head = FUNC41("HEAD", 0, &head_oid, NULL);
	if (!head)
		FUNC27(FUNC21("Failed to resolve HEAD as a valid ref."));
	if (!FUNC48(head, "HEAD"))
		filter.detached = 1;
	else if (!FUNC44(head, "refs/heads/", &head))
		FUNC27(FUNC21("HEAD not found below refs/heads!"));

	argc = FUNC35(argc, argv, prefix, options, builtin_branch_usage,
			     0);

	if (!delete && !rename && !copy && !edit_description && !new_upstream &&
	    !show_current && !unset_upstream && argc == 0)
		list = 1;

	if (filter.with_commit || filter.merge != REF_FILTER_MERGED_NONE || filter.points_at.nr ||
	    filter.no_commit)
		list = 1;

	if (!!delete + !!rename + !!copy + !!new_upstream + !!show_current +
	    list + unset_upstream > 1)
		FUNC50(builtin_branch_usage, options);

	if (filter.abbrev == -1)
		filter.abbrev = DEFAULT_ABBREV;
	filter.ignore_case = icase;

	FUNC31(&colopts, -1);
	if (filter.verbose) {
		if (FUNC30(colopts))
			FUNC27(FUNC21("--column and --verbose are incompatible"));
		colopts = 0;
	}

	if (force) {
		delete *= 2;
		rename *= 2;
		copy *= 2;
	}

	if (list)
		FUNC42("branch", 1);

	if (delete) {
		if (!argc)
			FUNC27(FUNC21("branch name required"));
		return FUNC26(argc, argv, delete > 1, filter.kind, quiet);
	} else if (show_current) {
		FUNC37();
		return 0;
	} else if (list) {
		/*  git branch --local also shows HEAD when it is detached */
		if ((filter.kind & FILTER_REFS_BRANCHES) && filter.detached)
			filter.kind |= FILTER_REFS_DETACHED_HEAD;
		filter.name_patterns = argv;
		/*
		 * If no sorting parameter is given then we default to sorting
		 * by 'refname'. This would give us an alphabetically sorted
		 * array with the 'HEAD' ref at the beginning followed by
		 * local branches 'refs/heads/...' and finally remote-tracking
		 * branches 'refs/remotes/...'.
		 */
		if (!sorting)
			sorting = FUNC39();
		sorting->ignore_case = icase;
		FUNC38(&filter, sorting, &format);
		FUNC36(&output, colopts, NULL);
		FUNC49(&output, 0);
		return 0;
	} else if (edit_description) {
		const char *branch_name;
		struct strbuf branch_ref = STRBUF_INIT;

		if (!argc) {
			if (filter.detached)
				FUNC27(FUNC21("Cannot give description to detached HEAD"));
			branch_name = head;
		} else if (argc == 1)
			branch_name = argv[0];
		else
			FUNC27(FUNC21("cannot edit description of more than one branch"));

		FUNC45(&branch_ref, "refs/heads/%s", branch_name);
		if (!FUNC40(branch_ref.buf)) {
			FUNC46(&branch_ref);

			if (!argc)
				return FUNC29(FUNC21("No commit on branch '%s' yet."),
					     branch_name);
			else
				return FUNC29(FUNC21("No branch named '%s'."),
					     branch_name);
		}
		FUNC46(&branch_ref);

		if (FUNC28(branch_name))
			return 1;
	} else if (copy) {
		if (!argc)
			FUNC27(FUNC21("branch name required"));
		else if (argc == 1)
			FUNC24(head, argv[0], 1, copy > 1);
		else if (argc == 2)
			FUNC24(argv[0], argv[1], 1, copy > 1);
		else
			FUNC27(FUNC21("too many branches for a copy operation"));
	} else if (rename) {
		if (!argc)
			FUNC27(FUNC21("branch name required"));
		else if (argc == 1)
			FUNC24(head, argv[0], 0, rename > 1);
		else if (argc == 2)
			FUNC24(argv[0], argv[1], 0, rename > 1);
		else
			FUNC27(FUNC21("too many arguments for a rename operation"));
	} else if (new_upstream) {
		struct branch *branch = FUNC22(argv[0]);

		if (argc > 1)
			FUNC27(FUNC21("too many arguments to set new upstream"));

		if (!branch) {
			if (!argc || !FUNC48(argv[0], "HEAD"))
				FUNC27(FUNC21("could not set upstream of HEAD to %s when "
				      "it does not point to any branch."),
				    new_upstream);
			FUNC27(FUNC21("no such branch '%s'"), argv[0]);
		}

		if (!FUNC40(branch->refname))
			FUNC27(FUNC21("branch '%s' does not exist"), branch->name);

		/*
		 * create_branch takes care of setting up the tracking
		 * info and making sure new_upstream is correct
		 */
		FUNC25(the_repository, branch->name, new_upstream,
			      0, 0, 0, quiet, BRANCH_TRACK_OVERRIDE);
	} else if (unset_upstream) {
		struct branch *branch = FUNC22(argv[0]);
		struct strbuf buf = STRBUF_INIT;

		if (argc > 1)
			FUNC27(FUNC21("too many arguments to unset upstream"));

		if (!branch) {
			if (!argc || !FUNC48(argv[0], "HEAD"))
				FUNC27(FUNC21("could not unset upstream of HEAD when "
				      "it does not point to any branch."));
			FUNC27(FUNC21("no such branch '%s'"), argv[0]);
		}

		if (!FUNC23(branch))
			FUNC27(FUNC21("Branch '%s' has no upstream information"), branch->name);

		FUNC45(&buf, "branch.%s.remote", branch->name);
		FUNC33(buf.buf, NULL, NULL, 1);
		FUNC47(&buf);
		FUNC45(&buf, "branch.%s.merge", branch->name);
		FUNC33(buf.buf, NULL, NULL, 1);
		FUNC46(&buf);
	} else if (argc > 0 && argc <= 2) {
		if (filter.kind != FILTER_REFS_BRANCHES)
			FUNC27(FUNC21("The -a, and -r, options to 'git branch' do not take a branch name.\n"
				  "Did you mean to use: -a|-r --list <pattern>?"));

		if (track == BRANCH_TRACK_OVERRIDE)
			FUNC27(FUNC21("the '--set-upstream' option is no longer supported. Please use '--track' or '--set-upstream-to' instead."));

		FUNC25(the_repository,
			      argv[0], (argc == 2) ? argv[1] : head,
			      force, 0, reflog, quiet, track);

	} else
		FUNC50(builtin_branch_usage, options);

	return 0;
}