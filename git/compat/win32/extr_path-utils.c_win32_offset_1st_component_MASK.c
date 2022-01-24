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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (char*,char*) ; 

int FUNC3(const char *path)
{
	char *pos = (char *)path;

	/* unc paths */
	if (!FUNC1(&pos) &&
			FUNC0(pos[0]) && FUNC0(pos[1])) {
		/* skip server name */
		pos = FUNC2(pos + 2, "\\/");
		if (!pos)
			return 0; /* Error: malformed unc path */

		do {
			pos++;
		} while (*pos && !FUNC0(*pos));
	}

	return pos + FUNC0(*pos) - path;
}