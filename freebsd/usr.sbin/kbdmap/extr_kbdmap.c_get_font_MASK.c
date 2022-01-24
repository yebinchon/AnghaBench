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
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int*,int*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 char* sysconfig ; 

__attribute__((used)) static char *
FUNC8(void)
{
	char line[256], buf[20];
	char *fnt = NULL;

	FILE *fp = FUNC2(sysconfig, "r");
	if (fp) {
		while (FUNC1(line, sizeof(line), fp)) {
			int a, b, matches;

			if (line[0] == '#')
				continue;

			matches = FUNC5(line,
			    " font%dx%d = \"%20[-.0-9a-zA-Z_]",
			    &a, &b, buf);
			if (matches==3) {
				if (FUNC6(buf, "NO")) {
					if (fnt)
						FUNC4(fnt);
					fnt = FUNC7(buf);
				}
			}
		}
		FUNC0(fp);
	} else
		FUNC3(stderr, "Could not open %s for reading\n", sysconfig);

	return fnt;
}