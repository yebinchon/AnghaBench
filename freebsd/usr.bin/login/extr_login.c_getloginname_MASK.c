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
 int EOF ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  NO_SLEEP_EXIT ; 
 scalar_t__ PAM_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ pam_silent ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* prompt ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static char *
FUNC8(void)
{
	char *nbuf, *p;
	int ch;

	nbuf = FUNC4(MAXLOGNAME);
	if (nbuf == NULL)
		FUNC2(1, "malloc()");
	do {
		(void)FUNC6("%s", prompt);
		for (p = nbuf; (ch = FUNC3()) != '\n'; ) {
			if (ch == EOF) {
				FUNC0(username);
				FUNC1(NO_SLEEP_EXIT, 0);
			}
			if (p < nbuf + MAXLOGNAME - 1)
				*p++ = ch;
		}
	} while (p == nbuf);

	*p = '\0';
	if (nbuf[0] == '-') {
		pam_silent = 0;
		FUNC5(nbuf, nbuf + 1, FUNC7(nbuf));
	} else {
		pam_silent = PAM_SILENT;
	}
	return nbuf;
}