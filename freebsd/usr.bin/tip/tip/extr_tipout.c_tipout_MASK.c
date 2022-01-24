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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEAUTIFY ; 
 int BUFSIZ ; 
 scalar_t__ EIO ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  EXCEPTIONS ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  SCRIPT ; 
 int /*<<< orphan*/  SIGEMT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIOT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSYS ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 char STRIP_PAR ; 
 scalar_t__ FUNC1 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fscript ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigbuf ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,size_t) ; 

void
FUNC19(void)
{
	char buf[BUFSIZ];
	char *cp;
	ssize_t scnt;
	size_t cnt;
	sigset_t mask, omask;

	FUNC15(SIGINT, SIG_IGN);
	FUNC15(SIGQUIT, SIG_IGN);
	FUNC15(SIGEMT, intEMT);		/* attention from TIPIN */
	FUNC15(SIGTERM, intTERM);	/* time to go signal */
	FUNC15(SIGIOT, intIOT);		/* scripting going on signal */
	FUNC15(SIGHUP, intTERM);	/* for dial-ups */
	FUNC15(SIGSYS, intSYS);		/* beautify toggle */
	(void) FUNC12(sigbuf);
	FUNC16(SIG_BLOCK, NULL, &omask);
	for (;;) {
		FUNC16(SIG_SETMASK, &omask, NULL);
		scnt = FUNC11(FD, buf, BUFSIZ);
		if (scnt <= 0) {
			/* lost carrier */
			if (scnt == 0 ||
			    (scnt < 0 && (errno == EIO || errno == ENXIO))) {
				FUNC14(&mask);
				FUNC13(&mask, SIGTERM);
				FUNC16(SIG_BLOCK, &mask, NULL);
				FUNC8(SIGHUP);
				/*NOTREACHED*/
			}
			continue;
		}
		cnt = scnt;
		FUNC14(&mask);
		FUNC13(&mask, SIGEMT);
		FUNC13(&mask, SIGTERM);
		FUNC13(&mask, SIGIOT);
		FUNC13(&mask, SIGSYS);
		FUNC16(SIG_BLOCK, &mask, NULL);
		for (cp = buf; cp < buf + cnt; cp++)
			*cp &= STRIP_PAR;
		FUNC18(STDOUT_FILENO, buf, cnt);
		if (FUNC2(FUNC17(SCRIPT)) && fscript != NULL) {
			if (!FUNC2(FUNC17(BEAUTIFY))) {
				FUNC4(buf, 1, cnt, fscript);
			} else {
				for (cp = buf; cp < buf + cnt; cp++)
					if ((*cp >= ' ' && *cp <= '~') ||
					    FUNC1(*cp, FUNC17(EXCEPTIONS)))
						FUNC10(*cp, fscript);
			}
			for (cp = buf; cp < buf + cnt; cp++) {
				if (!FUNC9(*cp)) {
					FUNC3(fscript);
					break;
				}
			}
		}
	}
}