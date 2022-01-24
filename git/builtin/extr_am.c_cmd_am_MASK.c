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
struct option {char member_1; char* member_2; char const* member_4; char const* member_5; intptr_t member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_0; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
struct am_state {scalar_t__ signoff; scalar_t__ keep; int rebasing; scalar_t__ interactive; int /*<<< orphan*/  dir; int /*<<< orphan*/  sign_commit; int /*<<< orphan*/  allow_rerere_autoupdate; scalar_t__ ignore_date; scalar_t__ committer_date_is_author_date; int /*<<< orphan*/  resolvemsg; int /*<<< orphan*/  git_apply_opts; scalar_t__ scissors; scalar_t__ message_id; scalar_t__ utf8; int /*<<< orphan*/  quiet; scalar_t__ threeway; } ;
typedef  enum resume_mode { ____Placeholder_resume_mode } resume_mode ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IDENT_STRICT ; 
 scalar_t__ KEEP_NON_PATCH ; 
 scalar_t__ KEEP_TRUE ; 
 char const* FUNC1 (char*) ; 
 int /*<<< orphan*/  OPTION_STRING ; 
 struct option FUNC2 (char,char*,scalar_t__*,char const*) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,char const*,char const*,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (char,char*,int*,char const*,int) ; 
 struct option FUNC5 () ; 
 struct option FUNC6 (char,char*,int*,char const*) ; 
 struct option FUNC7 (char,char*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 struct option FUNC8 (int /*<<< orphan*/ *) ; 
 struct option FUNC9 (char,char*,scalar_t__*,char const*,scalar_t__) ; 
 struct option FUNC10 (int /*<<< orphan*/ ,char*,int*,char const*,int,int /*<<< orphan*/ ) ; 
 struct option FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 struct option FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  PARSE_OPT_NOARG ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  PARSE_OPT_OPTARG ; 
 int PATCH_FORMAT_UNKNOWN ; 
#define  RESUME_ABORT 134 
#define  RESUME_APPLY 133 
#define  RESUME_FALSE 132 
#define  RESUME_QUIT 131 
#define  RESUME_RESOLVED 130 
#define  RESUME_SHOW_PATCH 129 
#define  RESUME_SKIP 128 
 scalar_t__ SIGNOFF_EXPLICIT ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct am_state*) ; 
 int FUNC17 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC18 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct am_state*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct am_state*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC24 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC25 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC26 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC27 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_am_config ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (char const*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 char const* FUNC35 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  parse_opt_patchformat ; 
 int FUNC36 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC38 (struct am_state*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC39 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC40 (char const* const*,struct option*) ; 

int FUNC41(int argc, const char **argv, const char *prefix)
{
	struct am_state state;
	int binary = -1;
	int keep_cr = -1;
	int patch_format = PATCH_FORMAT_UNKNOWN;
	enum resume_mode resume = RESUME_FALSE;
	int in_progress;
	int ret = 0;

	const char * const usage[] = {
		FUNC1("git am [<options>] [(<mbox> | <Maildir>)...]"),
		FUNC1("git am [<options>] (--continue | --skip | --abort)"),
		NULL
	};

	struct option options[] = {
		FUNC2('i', "interactive", &state.interactive,
			FUNC1("run interactively")),
		FUNC6('b', "binary", &binary,
			FUNC1("historical option -- no-op")),
		FUNC2('3', "3way", &state.threeway,
			FUNC1("allow fall back on 3way merging if needed")),
		FUNC12(&state.quiet, FUNC1("be quiet")),
		FUNC9('s', "signoff", &state.signoff,
			FUNC1("add a Signed-off-by line to the commit message"),
			SIGNOFF_EXPLICIT),
		FUNC2('u', "utf8", &state.utf8,
			FUNC1("recode into utf8 (default)")),
		FUNC9('k', "keep", &state.keep,
			FUNC1("pass -k flag to git-mailinfo"), KEEP_TRUE),
		FUNC9(0, "keep-non-patch", &state.keep,
			FUNC1("pass -b flag to git-mailinfo"), KEEP_NON_PATCH),
		FUNC2('m', "message-id", &state.message_id,
			FUNC1("pass -m flag to git-mailinfo")),
		FUNC10(0, "keep-cr", &keep_cr,
			FUNC1("pass --keep-cr flag to git-mailsplit for mbox format"),
			1, PARSE_OPT_NONEG),
		FUNC10(0, "no-keep-cr", &keep_cr,
			FUNC1("do not pass --keep-cr flag to git-mailsplit independent of am.keepcr"),
			0, PARSE_OPT_NONEG),
		FUNC2('c', "scissors", &state.scissors,
			FUNC1("strip everything before a scissors line")),
		FUNC7(0, "whitespace", &state.git_apply_opts, FUNC1("action"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC7(0, "ignore-space-change", &state.git_apply_opts, NULL,
			FUNC1("pass it through git-apply"),
			PARSE_OPT_NOARG),
		FUNC7(0, "ignore-whitespace", &state.git_apply_opts, NULL,
			FUNC1("pass it through git-apply"),
			PARSE_OPT_NOARG),
		FUNC7(0, "directory", &state.git_apply_opts, FUNC1("root"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC7(0, "exclude", &state.git_apply_opts, FUNC1("path"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC7(0, "include", &state.git_apply_opts, FUNC1("path"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC7('C', NULL, &state.git_apply_opts, FUNC1("n"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC7('p', NULL, &state.git_apply_opts, FUNC1("num"),
			FUNC1("pass it through git-apply"),
			0),
		FUNC3(0, "patch-format", &patch_format, FUNC1("format"),
			FUNC1("format the patch(es) are in"),
			parse_opt_patchformat),
		FUNC7(0, "reject", &state.git_apply_opts, NULL,
			FUNC1("pass it through git-apply"),
			PARSE_OPT_NOARG),
		FUNC11(0, "resolvemsg", &state.resolvemsg, NULL,
			FUNC1("override error message when patch failure occurs")),
		FUNC4(0, "continue", &resume,
			FUNC1("continue applying patches after resolving a conflict"),
			RESUME_RESOLVED),
		FUNC4('r', "resolved", &resume,
			FUNC1("synonyms for --continue"),
			RESUME_RESOLVED),
		FUNC4(0, "skip", &resume,
			FUNC1("skip the current patch"),
			RESUME_SKIP),
		FUNC4(0, "abort", &resume,
			FUNC1("restore the original branch and abort the patching operation."),
			RESUME_ABORT),
		FUNC4(0, "quit", &resume,
			FUNC1("abort the patching operation but keep HEAD where it is."),
			RESUME_QUIT),
		FUNC4(0, "show-current-patch", &resume,
			FUNC1("show the patch being applied."),
			RESUME_SHOW_PATCH),
		FUNC2(0, "committer-date-is-author-date",
			&state.committer_date_is_author_date,
			FUNC1("lie about committer date")),
		FUNC2(0, "ignore-date", &state.ignore_date,
			FUNC1("use current timestamp for author date")),
		FUNC8(&state.allow_rerere_autoupdate),
		{ OPTION_STRING, 'S', "gpg-sign", &state.sign_commit, FUNC1("key-id"),
		  FUNC1("GPG-sign commits"),
		  PARSE_OPT_OPTARG, NULL, (intptr_t) "" },
		FUNC6(0, "rebasing", &state.rebasing,
			FUNC1("(internal use for git-rebase)")),
		FUNC5()
	};

	if (argc == 2 && !FUNC39(argv[1], "-h"))
		FUNC40(usage, options);

	FUNC32(git_am_config, NULL);

	FUNC24(&state);

	in_progress = FUNC17(&state);
	if (in_progress)
		FUNC18(&state);

	argc = FUNC36(argc, argv, prefix, options, usage, 0);

	if (binary >= 0)
		FUNC30(stderr, FUNC13("The -b/--binary option has been a no-op for long time, and\n"
				"it will be removed. Please do not use it anymore."));

	/* Ensure a valid committer ident can be constructed */
	FUNC31(IDENT_STRICT);

	if (FUNC37(the_repository, NULL, 0) < 0)
		FUNC28(FUNC13("failed to read the index"));

	if (in_progress) {
		/*
		 * Catch user error to feed us patches when there is a session
		 * in progress:
		 *
		 * 1. mbox path(s) are provided on the command-line.
		 * 2. stdin is not a tty: the user is trying to feed us a patch
		 *    from standard input. This is somewhat unreliable -- stdin
		 *    could be /dev/null for example and the caller did not
		 *    intend to feed us a patch but wanted to continue
		 *    unattended.
		 */
		if (argc || (resume == RESUME_FALSE && !FUNC34(0)))
			FUNC28(FUNC13("previous rebase directory %s still exists but mbox given."),
				state.dir);

		if (resume == RESUME_FALSE)
			resume = RESUME_APPLY;

		if (state.signoff == SIGNOFF_EXPLICIT)
			FUNC15(&state);
	} else {
		struct argv_array paths = ARGV_ARRAY_INIT;
		int i;

		/*
		 * Handle stray state directory in the independent-run case. In
		 * the --rebasing case, it is up to the caller to take care of
		 * stray directories.
		 */
		if (FUNC29(state.dir) && !state.rebasing) {
			if (resume == RESUME_ABORT || resume == RESUME_QUIT) {
				FUNC16(&state);
				FUNC25(&state);
				return 0;
			}

			FUNC28(FUNC13("Stray %s directory found.\n"
				"Use \"git am --abort\" to remove it."),
				state.dir);
		}

		if (resume)
			FUNC28(FUNC13("Resolve operation not in progress, we are not resuming."));

		for (i = 0; i < argc; i++) {
			if (FUNC33(argv[i]) || !prefix)
				FUNC27(&paths, argv[i]);
			else
				FUNC27(&paths, FUNC35("%s/%s", prefix, argv[i]));
		}

		if (state.interactive && !paths.argc)
			FUNC28(FUNC13("interactive mode requires patches on the command line"));

		FUNC22(&state, patch_format, paths.argv, keep_cr);

		FUNC26(&paths);
	}

	switch (resume) {
	case RESUME_FALSE:
		FUNC21(&state, 0);
		break;
	case RESUME_APPLY:
		FUNC21(&state, 1);
		break;
	case RESUME_RESOLVED:
		FUNC20(&state);
		break;
	case RESUME_SKIP:
		FUNC23(&state);
		break;
	case RESUME_ABORT:
		FUNC14(&state);
		break;
	case RESUME_QUIT:
		FUNC19();
		FUNC16(&state);
		break;
	case RESUME_SHOW_PATCH:
		ret = FUNC38(&state);
		break;
	default:
		FUNC0("invalid resume value");
	}

	FUNC25(&state);

	return ret;
}