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
struct termios {int /*<<< orphan*/  c_cflag; } ;
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int /*<<< orphan*/  DC ; 
 scalar_t__ FD ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  HW ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TIOCEXCL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dead ; 
 int deadfl ; 
 int /*<<< orphan*/  deadline ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct termios*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,struct termios*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* uucplock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

long
FUNC14(char *name)
{
	char *cp;
	sig_t f;

	f = FUNC7(SIGALRM, dead);
	while ((cp = FUNC2(name))) {
		deadfl = 0;
		uucplock = FUNC8(cp, '/');
		if (uucplock == NULL)
			uucplock = cp;
		else
			uucplock++;

		if (FUNC11(uucplock) < 0)
			continue;
		/*
		 * Straight through call units, such as the BIZCOMP,
		 * VADIC and the DF, must indicate they're hardwired in
		 *  order to get an open file descriptor placed in FD.
		 * Otherwise, as for a DN-11, the open will have to
		 *  be done in the "open" routine.
		 */
		if (!HW)
			break;
		if (FUNC6(deadline) == 0) {
			FUNC0(10);
			FD = FUNC4(cp, (O_RDWR |
			    (FUNC1(FUNC13(DC)) ? O_NONBLOCK : 0)));
		}
		FUNC0(0);
		if (FD < 0) {
			FUNC5(cp);
			deadfl = 1;
		}
		if (!deadfl) {
			struct termios cntrl;

			FUNC9(FD, &cntrl);
			if (!FUNC1(FUNC13(DC)))
				cntrl.c_cflag |= HUPCL;
			FUNC10(FD, TCSAFLUSH, &cntrl);
			FUNC3(FD, TIOCEXCL, 0);
			FUNC7(SIGALRM, SIG_DFL);
			return ((long)cp);
		}
		(void)FUNC12(uucplock);
	}
	FUNC7(SIGALRM, f);
	return (deadfl ? -1 : (long)cp);
}