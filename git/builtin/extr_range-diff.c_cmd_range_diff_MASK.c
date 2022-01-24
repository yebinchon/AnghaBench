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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct option {int dummy; } ;
struct diff_options {int use_color; int /*<<< orphan*/  parseopts; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int RANGE_DIFF_CREATION_FACTOR_DEFAULT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  builtin_range_diff_usage ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_ui_config ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option* FUNC11 (struct option*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct diff_options*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int FUNC17 (char const*) ; 
 char* FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC20(int argc, const char **argv, const char *prefix)
{
	int creation_factor = RANGE_DIFF_CREATION_FACTOR_DEFAULT;
	struct diff_options diffopt = { NULL };
	int simple_color = -1;
	struct option range_diff_options[] = {
		FUNC4(0, "creation-factor", &creation_factor,
			    FUNC1("Percentage by which creation is weighted")),
		FUNC2(0, "no-dual-color", &simple_color,
			    FUNC1("use simple diff colors")),
		FUNC3()
	};
	struct option *options;
	int res = 0;
	struct strbuf range1 = STRBUF_INIT, range2 = STRBUF_INIT;

	FUNC9(git_diff_ui_config, NULL);

	FUNC12(the_repository, &diffopt);

	options = FUNC11(range_diff_options, diffopt.parseopts);
	argc = FUNC10(argc, argv, prefix, options,
			     builtin_range_diff_usage, 0);

	FUNC7(&diffopt);

	/* force color when --dual-color was used */
	if (!simple_color)
		diffopt.use_color = 1;

	if (argc == 2) {
		if (!FUNC18(argv[0], ".."))
			FUNC6(FUNC5("no .. in range: '%s'"), argv[0]);
		FUNC15(&range1, argv[0]);

		if (!FUNC18(argv[1], ".."))
			FUNC6(FUNC5("no .. in range: '%s'"), argv[1]);
		FUNC15(&range2, argv[1]);
	} else if (argc == 3) {
		FUNC14(&range1, "%s..%s", argv[0], argv[1]);
		FUNC14(&range2, "%s..%s", argv[0], argv[2]);
	} else if (argc == 1) {
		const char *b = FUNC18(argv[0], "..."), *a = argv[0];
		int a_len;

		if (!b) {
			FUNC8(FUNC5("single arg format must be symmetric range"));
			FUNC19(builtin_range_diff_usage, options);
		}

		a_len = (int)(b - a);
		if (!a_len) {
			a = "HEAD";
			a_len = FUNC17(a);
		}
		b += 3;
		if (!*b)
			b = "HEAD";
		FUNC14(&range1, "%s..%.*s", b, a_len, a);
		FUNC14(&range2, "%.*s..%s", a_len, a, b);
	} else {
		FUNC8(FUNC5("need two commit ranges"));
		FUNC19(builtin_range_diff_usage, options);
	}
	FUNC0(options);

	res = FUNC13(range1.buf, range2.buf, creation_factor,
			      simple_color < 1, &diffopt);

	FUNC16(&range1);
	FUNC16(&range2);

	return res;
}