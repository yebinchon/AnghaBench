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
 long XDF_IGNORE_WHITESPACE ; 
 long XDF_IGNORE_WHITESPACE_CHANGE ; 
 long XDF_WHITESPACE_FLAGS ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const char *line1, int len1,
			       const char *line2, int len2,
			       long flags)
{
	if (flags & XDF_WHITESPACE_FLAGS) {
		for (; len1 > 0 && FUNC0(line1[len1 - 1]); len1--);
		for (; len2 > 0 && FUNC0(line2[len2 - 1]); len2--);
	}

	if (!(flags & (XDF_IGNORE_WHITESPACE | XDF_IGNORE_WHITESPACE_CHANGE)))
		return (len1 == len2 && !FUNC1(line1, line2, len1));

	while (len1 > 0 && len2 > 0) {
		len1--;
		len2--;
		if (FUNC0(line1[len1]) || FUNC0(line2[len2])) {
			if ((flags & XDF_IGNORE_WHITESPACE_CHANGE) &&
			    (!FUNC0(line1[len1]) || !FUNC0(line2[len2])))
				return 0;

			for (; len1 > 0 && FUNC0(line1[len1]); len1--);
			for (; len2 > 0 && FUNC0(line2[len2]); len2--);
		}
		if (line1[len1] != line2[len2])
			return 0;
	}

	if (flags & XDF_IGNORE_WHITESPACE) {
		/* Consume remaining spaces */
		for (; len1 > 0 && FUNC0(line1[len1 - 1]); len1--);
		for (; len2 > 0 && FUNC0(line2[len2 - 1]); len2--);
	}

	/* We matched full line1 and line2 */
	if (!len1 && !len2)
		return 1;

	return 0;
}