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
struct message {scalar_t__ m_lines; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char* _PATH_LESS ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  brokpipe ; 
 struct message* dot ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ignore ; 
 struct message* message ; 
 int msgCount ; 
 int /*<<< orphan*/  pipestop ; 
 int realscreenheight ; 
 int /*<<< orphan*/  FUNC4 (struct message*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC7 (struct message*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int *msgvec, int doign, int page)
{
	int nlines, *ip;
	struct message *mp;
	char *cp;
	FILE *obuf;

	obuf = stdout;
	if (FUNC5(pipestop))
		goto close_pipe;
	if (FUNC8("interactive") != NULL &&
	    (page || (cp = FUNC8("crt")) != NULL)) {
		nlines = 0;
		if (!page) {
			for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++)
				nlines += message[*ip - 1].m_lines;
		}
		if (page || nlines > (*cp ? FUNC2(cp) : realscreenheight)) {
			cp = FUNC8("PAGER");
			if (cp == NULL || *cp == '\0')
				cp = _PATH_LESS;
			obuf = FUNC1(cp, "w");
			if (obuf == NULL) {
				FUNC9("%s", cp);
				obuf = stdout;
			} else
				(void)FUNC6(SIGPIPE, brokpipe);
		}
	}

	/*
	 * Send messages to the output.
	 *
	 */
	for (ip = msgvec; *ip && ip - msgvec < msgCount; ip++) {
		mp = &message[*ip - 1];
		FUNC7(mp);
		dot = mp;
		if (FUNC8("quiet") == NULL)
			FUNC3(obuf, "Message %d:\n", *ip);
		(void)FUNC4(mp, obuf, doign ? ignore : 0, NULL);
	}

close_pipe:
	if (obuf != stdout) {
		/*
		 * Ignore SIGPIPE so it can't cause a duplicate close.
		 */
		(void)FUNC6(SIGPIPE, SIG_IGN);
		(void)FUNC0(obuf);
		(void)FUNC6(SIGPIPE, SIG_DFL);
	}
	return (0);
}