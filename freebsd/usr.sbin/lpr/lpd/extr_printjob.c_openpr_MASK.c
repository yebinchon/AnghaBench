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
struct printer {char** filters; int /*<<< orphan*/  printer; scalar_t__ remote; scalar_t__* lp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOABORT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t LPF_INPUT ; 
 size_t LPF_OUTPUT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TFILENAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct printer const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  length ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ of_pid ; 
 int ofd ; 
 int /*<<< orphan*/  FUNC8 (struct printer const*) ; 
 int /*<<< orphan*/  FUNC9 (struct printer const*) ; 
 int /*<<< orphan*/  FUNC10 (struct printer const*) ; 
 int pfd ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int tfd ; 
 int /*<<< orphan*/  tfile ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static void
FUNC16(const struct printer *pp)
{
	int p[2];
	char *cp;

	if (pp->remote) {
		FUNC9(pp);
		/*
		 * Lpd does support the setting of 'of=' filters for
		 * jobs going to remote machines, but that does not
		 * have the same meaning as 'of=' does when handling
		 * local print queues.  For remote machines, all 'of='
		 * filter processing is handled in sendfile(), and that
		 * does not use these global "output filter" variables.
		 */ 
		ofd = -1;
		of_pid = 0;
		return;
	} else if (*pp->lp) {
		if (FUNC12(pp->lp, '@') != NULL)
			FUNC8(pp);
		else
			FUNC10(pp);
	} else {
		FUNC15(LOG_ERR, "%s: no line printer device or host name",
		    pp->printer);
		FUNC6(1);
	}

	/*
	 * Start up an output filter, if needed.
	 */
	if (pp->filters[LPF_OUTPUT] && !pp->filters[LPF_INPUT] && !of_pid) {
		FUNC11(p);
		if (pp->remote) {
			FUNC13(tfile, TFILENAME);
			tfd = FUNC7(tfile);
		}
		if ((of_pid = FUNC3(pp, DOABORT)) == 0) {	/* child */
			FUNC4(p[0], STDIN_FILENO);	/* pipe is std in */
			/* tfile/printer is stdout */
			FUNC4(pp->remote ? tfd : pfd, STDOUT_FILENO);
			FUNC2();
			FUNC1(3);
			if ((cp = FUNC14(pp->filters[LPF_OUTPUT], '/')) == NULL)
				cp = pp->filters[LPF_OUTPUT];
			else
				cp++;
			FUNC5(pp->filters[LPF_OUTPUT], cp, width, length,
			      (char *)0);
			FUNC15(LOG_ERR, "%s: execl(%s): %m", pp->printer,
			    pp->filters[LPF_OUTPUT]);
			FUNC6(1);
		}
		(void) FUNC0(p[0]);		/* close input side */
		ofd = p[1];			/* use pipe for output */
	} else {
		ofd = pfd;
		of_pid = 0;
	}
}