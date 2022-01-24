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
 int LOG_FACMASK ; 
 int LOG_PRIMASK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  facilitynames ; 
 int /*<<< orphan*/  prioritynames ; 

__attribute__((used)) static int
FUNC2(char *s)
{
	char *save;
	int fac, lev;

	for (save = s; *s && *s != '.'; ++s);
	if (*s) {
		*s = '\0';
		fac = FUNC0(save, facilitynames);
		if (fac < 0)
			FUNC1(1, "unknown facility name: %s", save);
		*s++ = '.';
	}
	else {
		fac = 0;
		s = save;
	}
	lev = FUNC0(s, prioritynames);
	if (lev < 0)
		FUNC1(1, "unknown priority name: %s", save);
	return ((lev & LOG_PRIMASK) | (fac & LOG_FACMASK));
}