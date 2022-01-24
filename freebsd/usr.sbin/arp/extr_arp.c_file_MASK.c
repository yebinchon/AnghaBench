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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 int FUNC5 (char*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(char *name)
{
	FILE *fp;
	int i, retval;
	char line[100], arg[5][50], *args[5], *p;

	if ((fp = FUNC2(name, "r")) == NULL)
		FUNC7(1, "cannot open %s", name);
	args[0] = &arg[0][0];
	args[1] = &arg[1][0];
	args[2] = &arg[2][0];
	args[3] = &arg[3][0];
	args[4] = &arg[4][0];
	retval = 0;
	while(FUNC1(line, sizeof(line), fp) != NULL) {
		if ((p = FUNC6(line, '#')) != NULL)
			*p = '\0';
		for (p = line; FUNC3(*p); p++);
		if (*p == '\n' || *p == '\0')
			continue;
		i = FUNC5(p, "%49s %49s %49s %49s %49s", arg[0], arg[1],
		    arg[2], arg[3], arg[4]);
		if (i < 2) {
			FUNC8("bad line: %s", line);
			retval = 1;
			continue;
		}
		if (FUNC4(i, args))
			retval = 1;
	}
	FUNC0(fp);
	return (retval);
}