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
struct show_data {char const* pattern; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPLACE_FORMAT_LONG ; 
 int /*<<< orphan*/  REPLACE_FORMAT_MEDIUM ; 
 int /*<<< orphan*/  REPLACE_FORMAT_SHORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  show_reference ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC4(const char *pattern, const char *format)
{
	struct show_data data;

	if (pattern == NULL)
		pattern = "*";
	data.pattern = pattern;

	if (format == NULL || *format == '\0' || !FUNC3(format, "short"))
		data.format = REPLACE_FORMAT_SHORT;
	else if (!FUNC3(format, "medium"))
		data.format = REPLACE_FORMAT_MEDIUM;
	else if (!FUNC3(format, "long"))
		data.format = REPLACE_FORMAT_LONG;
	/*
	 * Please update _git_replace() in git-completion.bash when
	 * you add new format
	 */
	else
		return FUNC1(FUNC0("invalid replace format '%s'\n"
			       "valid formats are 'short', 'medium' and 'long'"),
			     format);

	FUNC2(the_repository, show_reference, (void *)&data);

	return 0;
}