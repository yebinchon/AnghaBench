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
struct ref_sorting {int dummy; } ;
struct ref_format {char* format; int /*<<< orphan*/  use_color; } ;
struct ref_filter {int kind; scalar_t__ verbose; } ;
struct ref_array {int nr; int /*<<< orphan*/ * items; } ;
typedef  int /*<<< orphan*/  array ;

/* Variables and functions */
 int FILTER_REFS_INCLUDE_BROKEN ; 
 int FILTER_REFS_REMOTES ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  branch_use_color ; 
 char* FUNC2 (struct ref_filter*,int,char const*) ; 
 int FUNC3 (struct ref_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colopts ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ref_array*,struct ref_filter*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct ref_format*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ref_array*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  output ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (struct ref_array*) ; 
 int /*<<< orphan*/  FUNC13 (struct ref_sorting*,struct ref_array*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (struct ref_format*) ; 

__attribute__((used)) static void FUNC18(struct ref_filter *filter, struct ref_sorting *sorting, struct ref_format *format)
{
	int i;
	struct ref_array array;
	int maxwidth = 0;
	const char *remote_prefix = "";
	char *to_free = NULL;

	/*
	 * If we are listing more than just remote branches,
	 * then remote branches will have a "remotes/" prefix.
	 * We need to account for this in the width.
	 */
	if (filter->kind != FILTER_REFS_REMOTES)
		remote_prefix = "remotes/";

	FUNC10(&array, 0, sizeof(array));

	FUNC6(&array, filter, filter->kind | FILTER_REFS_INCLUDE_BROKEN);

	if (filter->verbose)
		maxwidth = FUNC3(&array, FUNC16(remote_prefix));

	if (!format->format)
		format->format = to_free = FUNC2(filter, maxwidth, remote_prefix);
	format->use_color = branch_use_color;

	if (FUNC17(format))
		FUNC5(FUNC0("unable to parse format string"));

	FUNC13(sorting, &array);

	for (i = 0; i < array.nr; i++) {
		struct strbuf out = STRBUF_INIT;
		struct strbuf err = STRBUF_INIT;
		if (FUNC7(array.items[i], format, &out, &err))
			FUNC5("%s", err.buf);
		if (FUNC4(colopts)) {
			FUNC1(!filter->verbose && "--column and --verbose are incompatible");
			 /* format to a string_list to let print_columns() do its job */
			FUNC15(&output, out.buf);
		} else {
			FUNC9(out.buf, 1, out.len, stdout);
			FUNC11('\n');
		}
		FUNC14(&err);
		FUNC14(&out);
	}

	FUNC12(&array);
	FUNC8(to_free);
}