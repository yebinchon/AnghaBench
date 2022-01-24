#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct shortlog {int user_format; scalar_t__ file; int /*<<< orphan*/  abbrev; int /*<<< orphan*/  email; int /*<<< orphan*/  summary; int /*<<< orphan*/  sort_by_number; int /*<<< orphan*/  committer; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__ nr; } ;
struct TYPE_4__ {scalar_t__ file; } ;
struct rev_info {scalar_t__ commit_format; TYPE_2__ pending; TYPE_1__ diffopt; int /*<<< orphan*/  abbrev; } ;
struct parse_opt_ctx_t {int dummy; } ;
struct option {char member_1; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; struct shortlog* member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  have_repository; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_USERFORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option const FUNC1 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
#define  PARSE_OPT_COMPLETE 131 
#define  PARSE_OPT_DONE 130 
#define  PARSE_OPT_ERROR 129 
#define  PARSE_OPT_HELP 128 
 int PARSE_OPT_KEEP_ARGV0 ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int /*<<< orphan*/  PARSE_OPT_OPTARG ; 
 int /*<<< orphan*/  STRING_LIST_INIT_NODUP ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct rev_info*,struct shortlog*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct parse_opt_ctx_t*) ; 
 int /*<<< orphan*/  FUNC13 (struct parse_opt_ctx_t*,int,char const**,char const*,struct option const*,int) ; 
 int FUNC14 (struct parse_opt_ctx_t*,struct option const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rev_info*,struct parse_opt_ctx_t*,struct option const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_wrap_args ; 
 int /*<<< orphan*/  FUNC16 (struct shortlog*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int FUNC18 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct shortlog*) ; 
 int /*<<< orphan*/  FUNC20 (struct shortlog*) ; 
 int /*<<< orphan*/  shortlog_usage ; 
 TYPE_3__* startup_info ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdout ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option const*) ; 

int FUNC22(int argc, const char **argv, const char *prefix)
{
	struct shortlog log = { STRING_LIST_INIT_NODUP };
	struct rev_info rev;
	int nongit = !startup_info->have_repository;

	const struct option options[] = {
		FUNC1('c', "committer", &log.committer,
			 FUNC0("Group by committer rather than author")),
		FUNC1('n', "numbered", &log.sort_by_number,
			 FUNC0("sort output according to the number of commits per author")),
		FUNC1('s', "summary", &log.summary,
			 FUNC0("Suppress commit descriptions, only provides commit count")),
		FUNC1('e', "email", &log.email,
			 FUNC0("Show the email address of each author")),
		{ OPTION_CALLBACK, 'w', NULL, &log, FUNC0("<w>[,<i1>[,<i2>]]"),
			FUNC0("Linewrap output"), &PARSE_OPT_OPTARG,
			parse_wrap_args },
		FUNC2(),
	};

	struct parse_opt_ctx_t ctx;

	FUNC10(git_default_config, NULL);
	FUNC19(&log);
	FUNC17(the_repository, &rev, prefix);
	FUNC13(&ctx, argc, argv, prefix, options,
			    PARSE_OPT_KEEP_DASHDASH | PARSE_OPT_KEEP_ARGV0);

	for (;;) {
		switch (FUNC14(&ctx, options, shortlog_usage)) {
		case PARSE_OPT_HELP:
		case PARSE_OPT_ERROR:
			FUNC6(129);
		case PARSE_OPT_COMPLETE:
			FUNC6(0);
		case PARSE_OPT_DONE:
			goto parse_done;
		}
		FUNC15(&rev, &ctx, options, shortlog_usage);
	}
parse_done:
	argc = FUNC12(&ctx);

	if (nongit && argc > 1) {
		FUNC5(FUNC3("too many arguments given outside repository"));
		FUNC21(shortlog_usage, options);
	}

	if (FUNC18(argc, argv, &rev, NULL) != 1) {
		FUNC5(FUNC3("unrecognized argument: %s"), argv[1]);
		FUNC21(shortlog_usage, options);
	}

	log.user_format = rev.commit_format == CMIT_FMT_USERFORMAT;
	log.abbrev = rev.abbrev;
	log.file = rev.diffopt.file;

	/* assume HEAD if from a tty */
	if (!nongit && !rev.pending.nr && FUNC11(0))
		FUNC4(&rev);
	if (rev.pending.nr == 0) {
		if (FUNC11(0))
			FUNC8(stderr, "%s", FUNC3("(reading log message from standard input)\n"));
		FUNC16(&log);
	}
	else
		FUNC9(&rev, &log);

	FUNC20(&log);
	if (log.file != stdout)
		FUNC7(log.file);
	return 0;
}