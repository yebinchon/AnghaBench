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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ECHOCHECK ; 
 int EOF ; 
 int /*<<< orphan*/  ETIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  PROMPT ; 
 int /*<<< orphan*/  RAWFTP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIOT ; 
 int STRIP_PAR ; 
 int /*<<< orphan*/  TABEXPAND ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  defchars ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fildes ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * repdes ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ stop ; 
 int /*<<< orphan*/  stopsnd ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  term ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ timedout ; 
 int /*<<< orphan*/  tipout_pid ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC18(FILE *fp, char *eofchars, char *command)
{
	char *pc, lastc;
	int c, ccount, lcount;
	time_t start_t, stop_t;
	sig_t f;

	FUNC5(tipout_pid, SIGIOT);	/* put TIPOUT into a wait state */
	stop = 0;
	f = FUNC11(SIGINT, stopsnd);
	FUNC14(0, TCSAFLUSH, &defchars);
	FUNC9(repdes[0], (char *)&ccc, 1);
	if (command != NULL) {
		for (pc = command; *pc; pc++)
			FUNC10(*pc);
		if (FUNC1(FUNC16(ECHOCHECK)))
			FUNC9(FD, (char *)&c, 1);	/* trailing \n */
		else {
			FUNC13(FD);
			FUNC12(5); /* wait for remote stty to take effect */
		}
	}
	lcount = 0;
	lastc = '\0';
	start_t = FUNC15(0);
	while (1) {
		ccount = 0;
		do {
			c = FUNC4(fp);
			if (stop)
				goto out;
			if (c == EOF)
				goto out;
			if (c == 0177 && !FUNC1(FUNC16(RAWFTP)))
				continue;
			lastc = c;
			if (c < 040) {
				if (c == '\n') {
					if (!FUNC1(FUNC16(RAWFTP)))
						c = '\r';
				} else if (c == '\t') {
					if (!FUNC1(FUNC16(RAWFTP))) {
						if (FUNC1(FUNC16(TABEXPAND))) {
							FUNC10(' ');
							while ((++ccount % 8) != 0)
								FUNC10(' ');
							continue;
						}
					}
				} else
					if (!FUNC1(FUNC16(RAWFTP)))
						continue;
			}
			FUNC10(c);
		} while (c != '\r' && !FUNC1(FUNC16(RAWFTP)));
		if (FUNC1(FUNC16(VERBOSE)))
			FUNC7("\r%d", ++lcount);
		if (FUNC1(FUNC16(ECHOCHECK))) {
			timedout = 0;
			FUNC0((unsigned int)FUNC6(ETIMEOUT));
			do {	/* wait for prompt */
				FUNC9(FD, (char *)&c, 1);
				if (timedout || stop) {
					if (timedout)
						FUNC7("\r\ntimed out at eol\r\n");
					FUNC0(0);
					goto out;
				}
			} while ((c&STRIP_PAR) != FUNC2(FUNC16(PROMPT)));
			FUNC0(0);
		}
	}
out:
	if (lastc != '\n' && !FUNC1(FUNC16(RAWFTP)))
		FUNC10('\r');
	if (eofchars) {
		for (pc = eofchars; *pc; pc++)
			FUNC10(*pc);
	}
	stop_t = FUNC15(0);
	FUNC3(fp);
	FUNC11(SIGINT, f);
	if (FUNC1(FUNC16(VERBOSE))) {
		if (FUNC1(FUNC16(RAWFTP)))
			FUNC8(" chars transferred in ", stop_t-start_t);
		else
			FUNC8(" lines transferred in ", stop_t-start_t);
	}
	FUNC17(fildes[1], (char *)&ccc, 1);
	FUNC14(0, TCSAFLUSH, &term);
}