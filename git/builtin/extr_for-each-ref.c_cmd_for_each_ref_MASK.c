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
struct ref_sorting {int ignore_case; } ;
struct ref_format {char* format; int /*<<< orphan*/  quote_style; int /*<<< orphan*/  use_color; } ;
struct ref_filter {int ignore_case; char const** name_patterns; int match_as_path; int nr; int /*<<< orphan*/ * items; int /*<<< orphan*/  no_commit; int /*<<< orphan*/  with_commit; int /*<<< orphan*/  points_at; } ;
struct ref_array {int ignore_case; char const** name_patterns; int match_as_path; int nr; int /*<<< orphan*/ * items; int /*<<< orphan*/  no_commit; int /*<<< orphan*/  with_commit; int /*<<< orphan*/  points_at; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  filter ;
typedef  int /*<<< orphan*/  array ;

/* Variables and functions */
 int FILTER_REFS_ALL ; 
 int FILTER_REFS_INCLUDE_BROKEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC6 () ; 
 struct option FUNC7 (char*) ; 
 struct option FUNC8 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC9 (struct ref_filter*,int /*<<< orphan*/ ) ; 
 struct option FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC11 (struct ref_filter*,int /*<<< orphan*/ ) ; 
 struct option FUNC12 (struct ref_sorting**) ; 
 struct option FUNC13 (int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUOTE_PERL ; 
 int /*<<< orphan*/  QUOTE_PYTHON ; 
 int /*<<< orphan*/  QUOTE_SHELL ; 
 int /*<<< orphan*/  QUOTE_TCL ; 
 struct ref_format REF_FORMAT_INIT ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ref_filter*,struct ref_filter*,int) ; 
 int /*<<< orphan*/  for_each_ref_usage ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC18 (struct ref_filter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  parse_opt_object_name ; 
 int /*<<< orphan*/  FUNC19 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ref_filter*) ; 
 int /*<<< orphan*/  FUNC21 (struct ref_sorting*,struct ref_filter*) ; 
 struct ref_sorting* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct ref_format*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct option*) ; 
 scalar_t__ FUNC25 (struct ref_format*) ; 

int FUNC26(int argc, const char **argv, const char *prefix)
{
	int i;
	struct ref_sorting *sorting = NULL, **sorting_tail = &sorting;
	int maxcount = 0, icase = 0;
	struct ref_array array;
	struct ref_filter filter;
	struct ref_format format = REF_FORMAT_INIT;

	struct option opts[] = {
		FUNC2('s', "shell", &format.quote_style,
			FUNC1("quote placeholders suitably for shells"), QUOTE_SHELL),
		FUNC2('p', "perl",  &format.quote_style,
			FUNC1("quote placeholders suitably for perl"), QUOTE_PERL),
		FUNC2(0 , "python", &format.quote_style,
			FUNC1("quote placeholders suitably for python"), QUOTE_PYTHON),
		FUNC2(0 , "tcl",  &format.quote_style,
			FUNC1("quote placeholders suitably for Tcl"), QUOTE_TCL),

		FUNC7(""),
		FUNC8( 0 , "count", &maxcount, FUNC1("show only <n> matched refs")),
		FUNC13(  0 , "format", &format.format, FUNC1("format"), FUNC1("format to use for the output")),
		FUNC14(&format.use_color, FUNC1("respect format colors")),
		FUNC12(sorting_tail),
		FUNC4(0, "points-at", &filter.points_at,
			     FUNC1("object"), FUNC1("print only refs which points at the given object"),
			     parse_opt_object_name),
		FUNC9(&filter, FUNC1("print only refs that are merged")),
		FUNC11(&filter, FUNC1("print only refs that are not merged")),
		FUNC5(&filter.with_commit, FUNC1("print only refs which contain the commit")),
		FUNC10(&filter.no_commit, FUNC1("print only refs which don't contain the commit")),
		FUNC3(0, "ignore-case", &icase, FUNC1("sorting and filtering are case insensitive")),
		FUNC6(),
	};

	FUNC18(&array, 0, sizeof(array));
	FUNC18(&filter, 0, sizeof(filter));

	format.format = "%(objectname) %(objecttype)\t%(refname)";

	FUNC17(git_default_config, NULL);

	FUNC19(argc, argv, prefix, opts, for_each_ref_usage, 0);
	if (maxcount < 0) {
		FUNC15("invalid --count argument: `%d'", maxcount);
		FUNC24(for_each_ref_usage, opts);
	}
	if (FUNC0(format.quote_style)) {
		FUNC15("more than one quoting style?");
		FUNC24(for_each_ref_usage, opts);
	}
	if (FUNC25(&format))
		FUNC24(for_each_ref_usage, opts);

	if (!sorting)
		sorting = FUNC22();
	sorting->ignore_case = icase;
	filter.ignore_case = icase;

	filter.name_patterns = argv;
	filter.match_as_path = 1;
	FUNC16(&array, &filter, FILTER_REFS_ALL | FILTER_REFS_INCLUDE_BROKEN);
	FUNC21(sorting, &array);

	if (!maxcount || array.nr < maxcount)
		maxcount = array.nr;
	for (i = 0; i < maxcount; i++)
		FUNC23(array.items[i], &format);
	FUNC20(&array);
	return 0;
}