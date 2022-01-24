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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct option {char* member_2; int* member_3; int member_6; int /*<<< orphan*/  member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct fmt_merge_msg_opts {int add_title; int credit_people; int shortlog_len; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MERGE_LOG_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_INTEGER ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (float,char*,char const**,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_OPTARG ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct strbuf*,struct strbuf*,struct fmt_merge_msg_opts*) ; 
 int /*<<< orphan*/  fmt_merge_msg_config ; 
 int /*<<< orphan*/  fmt_merge_msg_usage ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fmt_merge_msg_opts*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ merge_log_config ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC12 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC16(int argc, const char **argv, const char *prefix)
{
	const char *inpath = NULL;
	const char *message = NULL;
	int shortlog_len = -1;
	struct option options[] = {
		{ OPTION_INTEGER, 0, "log", shortlog_len, FUNC0("n"),
		  FUNC0("populate log with at most <n> entries from shortlog"),
		  PARSE_OPT_OPTARG, NULL, DEFAULT_MERGE_LOG_LEN },
		{ OPTION_INTEGER, 0, "summary", shortlog_len, FUNC0("n"),
		  FUNC0("alias for --log (deprecated)"),
		  PARSE_OPT_OPTARG | PARSE_OPT_HIDDEN, NULL,
		  DEFAULT_MERGE_LOG_LEN },
		FUNC3('m', "message", &message, FUNC0("text"),
			FUNC0("use <text> as start of message")),
		FUNC2('F', "file", &inpath, FUNC0("file to read from")),
		FUNC1()
	};

	FILE *in = stdin;
	struct strbuf input = STRBUF_INIT, output = STRBUF_INIT;
	int ret;
	struct fmt_merge_msg_opts opts;

	FUNC8(fmt_merge_msg_config, NULL);
	argc = FUNC10(argc, argv, prefix, options, fmt_merge_msg_usage,
			     0);
	if (argc > 0)
		FUNC14(fmt_merge_msg_usage, options);
	if (shortlog_len < 0)
		shortlog_len = (merge_log_config > 0) ? merge_log_config : 0;

	if (inpath && FUNC13(inpath, "-")) {
		in = FUNC7(inpath, "r");
		if (!in)
			FUNC4("cannot open '%s'", inpath);
	}

	if (FUNC12(&input, FUNC5(in), 0) < 0)
		FUNC4("could not read input file");

	if (message)
		FUNC11(&output, message);

	FUNC9(&opts, 0, sizeof(opts));
	opts.add_title = !message;
	opts.credit_people = 1;
	opts.shortlog_len = shortlog_len;

	ret = FUNC6(&input, &output, &opts);
	if (ret)
		return ret;
	FUNC15(STDOUT_FILENO, output.buf, output.len);
	return 0;
}