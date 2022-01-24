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

/* Variables and functions */
 int OUTPUT_COLOR_LINE ; 
 int OUTPUT_SHOW_AGE_WITH_COLOR ; 
 int OUTPUT_SHOW_EMAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  blame_date_mode ; 
 void* blank_boundary ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int coloring_mode ; 
 int FUNC2 (char const*) ; 
 void* FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const**,char const*,char const*) ; 
 int FUNC5 (char const*,char const*,void*) ; 
 scalar_t__ FUNC6 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  ignore_revs_file_list ; 
 void* mark_ignored_lines ; 
 void* mark_unblamable_lines ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repeated_meta_color ; 
 void* show_root ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC14(const char *var, const char *value, void *cb)
{
	if (!FUNC9(var, "blame.showroot")) {
		show_root = FUNC3(var, value);
		return 0;
	}
	if (!FUNC9(var, "blame.blankboundary")) {
		blank_boundary = FUNC3(var, value);
		return 0;
	}
	if (!FUNC9(var, "blame.showemail")) {
		int *output_option = cb;
		if (FUNC3(var, value))
			*output_option |= OUTPUT_SHOW_EMAIL;
		else
			*output_option &= ~OUTPUT_SHOW_EMAIL;
		return 0;
	}
	if (!FUNC9(var, "blame.date")) {
		if (!value)
			return FUNC2(var);
		FUNC8(value, &blame_date_mode);
		return 0;
	}
	if (!FUNC9(var, "blame.ignorerevsfile")) {
		const char *str;
		int ret;

		ret = FUNC4(&str, var, value);
		if (ret)
			return ret;
		FUNC10(&ignore_revs_file_list, str);
		return 0;
	}
	if (!FUNC9(var, "blame.markunblamablelines")) {
		mark_unblamable_lines = FUNC3(var, value);
		return 0;
	}
	if (!FUNC9(var, "blame.markignoredlines")) {
		mark_ignored_lines = FUNC3(var, value);
		return 0;
	}
	if (!FUNC9(var, "color.blame.repeatedlines")) {
		if (FUNC1(value, FUNC11(value), repeated_meta_color))
			FUNC13(FUNC0("invalid color '%s' in color.blame.repeatedLines"),
				value);
		return 0;
	}
	if (!FUNC9(var, "color.blame.highlightrecent")) {
		FUNC7(value);
		return 0;
	}

	if (!FUNC9(var, "blame.coloring")) {
		if (!FUNC9(value, "repeatedLines")) {
			coloring_mode |= OUTPUT_COLOR_LINE;
		} else if (!FUNC9(value, "highlightRecent")) {
			coloring_mode |= OUTPUT_SHOW_AGE_WITH_COLOR;
		} else if (!FUNC9(value, "none")) {
			coloring_mode &= ~(OUTPUT_COLOR_LINE |
					    OUTPUT_SHOW_AGE_WITH_COLOR);
		} else {
			FUNC13(FUNC0("invalid value for blame.coloring"));
			return 0;
		}
	}

	if (FUNC6(var, value, cb) < 0)
		return -1;
	if (FUNC12(var, value) < 0)
		return -1;

	return FUNC5(var, value, cb);
}