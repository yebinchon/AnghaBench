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
struct ref_sorting {int dummy; } ;
struct ref_format {char* format; } ;
struct ref_filter {int lines; int with_commit_tag_algo; } ;
struct ref_array {int nr; int /*<<< orphan*/ * items; } ;
typedef  int /*<<< orphan*/  array ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_REFS_TAGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ref_array*,struct ref_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ref_array*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_array*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref_sorting*,struct ref_array*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ref_format*) ; 
 scalar_t__ FUNC8 (struct ref_format*) ; 
 char* FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct ref_filter *filter, struct ref_sorting *sorting,
		     struct ref_format *format)
{
	struct ref_array array;
	char *to_free = NULL;
	int i;

	FUNC4(&array, 0, sizeof(array));

	if (filter->lines == -1)
		filter->lines = 0;

	if (!format->format) {
		if (filter->lines) {
			to_free = FUNC9("%s %%(contents:lines=%d)",
					  "%(align:15)%(refname:lstrip=2)%(end)",
					  filter->lines);
			format->format = to_free;
		} else
			format->format = "%(refname:lstrip=2)";
	}

	if (FUNC8(format))
		FUNC1(FUNC0("unable to parse format string"));
	filter->with_commit_tag_algo = 1;
	FUNC2(&array, filter, FILTER_REFS_TAGS);
	FUNC6(sorting, &array);

	for (i = 0; i < array.nr; i++)
		FUNC7(array.items[i], format);
	FUNC5(&array);
	FUNC3(to_free);

	return 0;
}