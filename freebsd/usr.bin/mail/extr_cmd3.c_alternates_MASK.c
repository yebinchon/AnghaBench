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
 char** altnames ; 
 int FUNC0 (char**) ; 
 void* FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(char **namelist)
{
	int c;
	char **ap, **ap2, *cp;

	c = FUNC0(namelist) + 1;
	if (c == 1) {
		if (altnames == 0)
			return (0);
		for (ap = altnames; *ap != NULL; ap++)
			FUNC4("%s ", *ap);
		FUNC4("\n");
		return (0);
	}
	if (altnames != 0)
		(void)FUNC3(altnames);
	if ((altnames = FUNC1((unsigned)c, sizeof(char *))) == NULL)
		FUNC2(1, "Out of memory");
	for (ap = namelist, ap2 = altnames; *ap != NULL; ap++, ap2++) {
		cp = FUNC1((unsigned)FUNC6(*ap) + 1, sizeof(char));
		FUNC5(cp, *ap);
		*ap2 = cp;
	}
	*ap2 = 0;
	return (0);
}