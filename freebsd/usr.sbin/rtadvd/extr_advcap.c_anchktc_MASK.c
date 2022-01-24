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
 int BUFSIZ ; 
 scalar_t__ MAXHOP ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  conffile ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ hopcount ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 char* tbuf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC5(void)
{
	char *p, *q;
	char tcname[16];	/* name of similar terminal */
	char tcbuf[BUFSIZ];
	char *holdtbuf = tbuf;
	int l;

	p = tbuf + FUNC3(tbuf) - 2;	/* before the last colon */
	while (*--p != ':')
		if (p < tbuf) {
			FUNC4(STDERR_FILENO, "Bad remcap entry\n", 18);
			return (0);
		}
	p++;
	/* p now points to beginning of last field */
	if (p[0] != 't' || p[1] != 'c')
		return (1);
	FUNC2(tcname, p + 3, sizeof tcname);
	q = tcname;
	while (*q && *q != ':')
		q++;
	*q = 0;
	if (++hopcount > MAXHOP) {
		FUNC4(STDERR_FILENO, "Infinite tc= loop\n", 18);
		return (0);
	}
	if (FUNC0(tcbuf, tcname, conffile) != 1) {
		return (0);
	}
	for (q = tcbuf; *q++ != ':'; )
		;
	l = p - holdtbuf + FUNC3(q);
	if (l > BUFSIZ) {
		FUNC4(STDERR_FILENO, "Remcap entry too long\n", 23);
		q[BUFSIZ - (p-holdtbuf)] = 0;
	}
	FUNC1(p, q);
	tbuf = holdtbuf;
	return (1);
}