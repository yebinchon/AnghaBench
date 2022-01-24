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
 unsigned int COL_ENABLED ; 
 unsigned int COL_ENABLE_MASK ; 
 int ENABLE_SET ; 
 int LAYOUT_SET ; 
 scalar_t__ FUNC0 (char const*,int,unsigned int*,int*) ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(unsigned int *colopts, const char *value)
{
	const char *sep = " ,";
	int group_set = 0;

	while (*value) {
		int len = FUNC1(value, sep);
		if (len) {
			if (FUNC0(value, len, colopts, &group_set))
				return -1;

			value += len;
		}
		value += FUNC2(value, sep);
	}
	/*
	 * If none of "always", "never", and "auto" is specified, then setting
	 * layout implies "always".
	 *
	 * Current value in COL_ENABLE_MASK is disregarded. This means if
	 * you set column.ui = auto and pass --column=row, then "auto"
	 * will become "always".
	 */
	if ((group_set & LAYOUT_SET) && !(group_set & ENABLE_SET))
		*colopts = (*colopts & ~COL_ENABLE_MASK) | COL_ENABLED;
	return 0;
}