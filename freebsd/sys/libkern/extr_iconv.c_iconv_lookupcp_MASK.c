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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

int
FUNC2(char **cpp, const char *s)
{
	if (cpp == NULL) {
		FUNC0("warning a NULL list passed\n", "");
		return ENOENT;
	}
	for (; *cpp; cpp++)
		if (FUNC1(*cpp, s) == 0)
			return 0;
	return ENOENT;
}