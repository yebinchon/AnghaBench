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
 int FUNC0 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *s1, char separator, const char *s2)
{
	char *result;
	char s1last, s2first;
	int ret;

	if (s1 == NULL)
		s1 = "";
	if (s2 == NULL)
		s2 = "";

	if (s1[0] == '\0')
		s1last = '\0';
	else
		s1last = s1[FUNC2(s1) - 1];

	s2first = s2[0];

	if (s1last == separator && s2first == separator) {
		/*
		 * If s1 ends with the separator and s2 begins with
		 * it - skip the latter; otherwise concatenating "/"
		 * and "/foo" would end up returning "//foo".
		 */
		ret = FUNC0(&result, "%s%s", s1, s2 + 1);
	} else if (s1last == separator || s2first == separator ||
	    s1[0] == '\0' || s2[0] == '\0') {
		ret = FUNC0(&result, "%s%s", s1, s2);
	} else {
		ret = FUNC0(&result, "%s%c%s", s1, separator, s2);
	}
	if (ret < 0)
		FUNC1(1, "asprintf");

	//log_debugx("%s: got %s and %s, returning %s", __func__, s1, s2, result);

	return (result);
}