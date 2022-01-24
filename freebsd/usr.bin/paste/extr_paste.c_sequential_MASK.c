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
typedef  char wint_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char WEOF ; 
 char* delim ; 
 int delimcnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(char **argv)
{
	FILE *fp;
	int cnt, failed, needdelim;
	wint_t ch;
	char *p;

	failed = 0;
	for (; (p = *argv); ++argv) {
		if (p[0] == '-' && !p[1])
			fp = stdin;
		else if (!(fp = FUNC1(p, "r"))) {
			FUNC4("%s", p);
			failed = 1;
			continue;
		}
		cnt = needdelim = 0;
		while ((ch = FUNC2(fp)) != WEOF) {
			if (needdelim) {
				needdelim = 0;
				if (delim[cnt] != '\0')
					FUNC3(delim[cnt]);
				if (++cnt == delimcnt)
					cnt = 0;
			}
			if (ch != '\n')
				FUNC3(ch);
			else
				needdelim = 1;
		}
		if (needdelim)
			FUNC3('\n');
		if (fp != stdin)
			(void)FUNC0(fp);
	}

	return (failed != 0);
}