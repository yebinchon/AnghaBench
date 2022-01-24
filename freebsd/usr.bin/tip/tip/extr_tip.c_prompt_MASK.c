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
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  intprompt ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  promptbuf ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ stoprompt ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(char *s, char *p, size_t sz)
{
	int c;
	char *b = p;
	sig_t oint, oquit;

	stoprompt = 0;
	oint = FUNC4(SIGINT, intprompt);
	oquit = FUNC4(SIGQUIT, SIG_IGN);
	FUNC5();
	FUNC1("%s", s);
	if (FUNC3(promptbuf) == 0)
		while ((c = FUNC0()) != EOF && (*p = c) != '\n' && --sz > 0)
			p++;
	*p = '\0';

	FUNC2();
	(void)FUNC4(SIGINT, oint);
	(void)FUNC4(SIGQUIT, oquit);
	return (stoprompt || p == b);
}