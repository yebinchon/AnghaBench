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
struct process_trailer_options {scalar_t__ in_place; scalar_t__ only_input; scalar_t__ no_divider; scalar_t__ unfold; scalar_t__ only_trailers; scalar_t__ trim_empty; } ;
struct option {char* member_2; int member_6; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_5; int /*<<< orphan*/ * member_4; struct process_trailer_options* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 () ; 
 int PARSE_OPT_NOARG ; 
 int PARSE_OPT_NONEG ; 
 struct process_trailer_options PROCESS_TRAILER_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_interpret_trailers_usage ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  option_parse_if_exists ; 
 int /*<<< orphan*/  option_parse_if_missing ; 
 int /*<<< orphan*/  option_parse_trailer ; 
 int /*<<< orphan*/  option_parse_where ; 
 int /*<<< orphan*/  parse_opt_parse ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,struct process_trailer_options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trailers ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct option*) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	struct process_trailer_options opts = PROCESS_TRAILER_OPTIONS_INIT;
	FUNC0(trailers);

	struct option options[] = {
		FUNC2(0, "in-place", &opts.in_place, FUNC1("edit files in place")),
		FUNC2(0, "trim-empty", &opts.trim_empty, FUNC1("trim empty trailers")),

		FUNC3(0, "where", NULL, FUNC1("action"),
			     FUNC1("where to place the new trailer"), option_parse_where),
		FUNC3(0, "if-exists", NULL, FUNC1("action"),
			     FUNC1("action if trailer already exists"), option_parse_if_exists),
		FUNC3(0, "if-missing", NULL, FUNC1("action"),
			     FUNC1("action if trailer is missing"), option_parse_if_missing),

		FUNC2(0, "only-trailers", &opts.only_trailers, FUNC1("output only the trailers")),
		FUNC2(0, "only-input", &opts.only_input, FUNC1("do not apply config rules")),
		FUNC2(0, "unfold", &opts.unfold, FUNC1("join whitespace-continued values")),
		{ OPTION_CALLBACK, 0, "parse", &opts, NULL, FUNC1("set parsing options"),
			PARSE_OPT_NOARG | PARSE_OPT_NONEG, parse_opt_parse },
		FUNC2(0, "no-divider", &opts.no_divider, FUNC1("do not treat --- specially")),
		FUNC3(0, "trailer", &trailers, FUNC1("trailer"),
				FUNC1("trailer(s) to add"), option_parse_trailer),
		FUNC4()
	};

	FUNC7(git_default_config, NULL);

	argc = FUNC10(argc, argv, prefix, options,
			     git_interpret_trailers_usage, 0);

	if (opts.only_input && !FUNC8(&trailers))
		FUNC12(
			FUNC5("--trailer with --only-input does not make sense"),
			git_interpret_trailers_usage,
			options);

	if (argc) {
		int i;
		for (i = 0; i < argc; i++)
			FUNC11(argv[i], &opts, &trailers);
	} else {
		if (opts.in_place)
			FUNC6(FUNC5("no input file given for in-place editing"));
		FUNC11(NULL, &opts, &trailers);
	}

	FUNC9(&trailers);

	return 0;
}