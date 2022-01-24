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
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* homedir ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3(void *v)
{
	char **arglist = v;
	char *cp;

	if (*arglist == NULL) {
		if (homedir == NULL)
			return (1);
		cp = homedir;
	} else
		if ((cp = FUNC1(*arglist)) == NULL)
			return (1);
	if (FUNC0(cp) < 0) {
		FUNC2("%s", cp);
		return (1);
	}
	return (0);
}