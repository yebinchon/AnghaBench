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
struct termios {int c_lflag; void** c_cc; } ;
struct header {int /*<<< orphan*/ * h_bcc; int /*<<< orphan*/ * h_cc; int /*<<< orphan*/ * h_subject; int /*<<< orphan*/ * h_to; } ;
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int EXTPROC ; 
 int GBCC ; 
 int GCC ; 
 int GSUBJECT ; 
 int GTO ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  TIOCEXT ; 
 size_t VERASE ; 
 size_t VKILL ; 
 void* _POSIX_VDISABLE ; 
 void* c_erase ; 
 void* c_kill ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intjmp ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  ttyint ; 
 scalar_t__ ttyset ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(struct header *hp, int gflags)
{
	struct termios ttybuf;
	sig_t saveint;
	sig_t savetstp;
	sig_t savettou;
	sig_t savettin;
	int errs;
#ifndef TIOCSTI
	sig_t savequit;
#else
# ifdef TIOCEXT
	int extproc, flag;
# endif /* TIOCEXT */
#endif /* TIOCSTI */

	savetstp = FUNC6(SIGTSTP, SIG_DFL);
	savettou = FUNC6(SIGTTOU, SIG_DFL);
	savettin = FUNC6(SIGTTIN, SIG_DFL);
	errs = 0;
#ifndef TIOCSTI
	ttyset = 0;
#endif
	if (FUNC7(FUNC2(stdin), &ttybuf) < 0) {
		FUNC9("tcgetattr(stdin)");
		return (-1);
	}
	c_erase = ttybuf.c_cc[VERASE];
	c_kill = ttybuf.c_cc[VKILL];
#ifndef TIOCSTI
	ttybuf.c_cc[VERASE] = _POSIX_VDISABLE;
	ttybuf.c_cc[VKILL] = _POSIX_VDISABLE;
	if ((saveint = FUNC6(SIGINT, SIG_IGN)) == SIG_DFL)
		(void)FUNC6(SIGINT, SIG_DFL);
	if ((savequit = FUNC6(SIGQUIT, SIG_IGN)) == SIG_DFL)
		(void)FUNC6(SIGQUIT, SIG_DFL);
#else
# ifdef		TIOCEXT
	extproc = ((ttybuf.c_lflag & EXTPROC) ? 1 : 0);
	if (extproc) {
		flag = 0;
		if (ioctl(fileno(stdin), TIOCEXT, &flag) < 0)
			warn("TIOCEXT: off");
	}
# endif	/* TIOCEXT */
	if (setjmp(intjmp))
		goto out;
	saveint = signal(SIGINT, ttyint);
#endif
	if (gflags & GTO) {
#ifndef TIOCSTI
		if (!ttyset && hp->h_to != NULL)
			ttyset++, FUNC8(FUNC2(stdin), TCSADRAIN, &ttybuf);
#endif
		hp->h_to =
			FUNC1(FUNC4("To: ", FUNC0(hp->h_to, 0)), GTO);
	}
	if (gflags & GSUBJECT) {
#ifndef TIOCSTI
		if (!ttyset && hp->h_subject != NULL)
			ttyset++, FUNC8(FUNC2(stdin), TCSADRAIN, &ttybuf);
#endif
		hp->h_subject = FUNC4("Subject: ", hp->h_subject);
	}
	if (gflags & GCC) {
#ifndef TIOCSTI
		if (!ttyset && hp->h_cc != NULL)
			ttyset++, FUNC8(FUNC2(stdin), TCSADRAIN, &ttybuf);
#endif
		hp->h_cc =
			FUNC1(FUNC4("Cc: ", FUNC0(hp->h_cc, 0)), GCC);
	}
	if (gflags & GBCC) {
#ifndef TIOCSTI
		if (!ttyset && hp->h_bcc != NULL)
			ttyset++, FUNC8(FUNC2(stdin), TCSADRAIN, &ttybuf);
#endif
		hp->h_bcc =
			FUNC1(FUNC4("Bcc: ", FUNC0(hp->h_bcc, 0)), GBCC);
	}
out:
	(void)FUNC6(SIGTSTP, savetstp);
	(void)FUNC6(SIGTTOU, savettou);
	(void)FUNC6(SIGTTIN, savettin);
#ifndef TIOCSTI
	ttybuf.c_cc[VERASE] = c_erase;
	ttybuf.c_cc[VKILL] = c_kill;
	if (ttyset)
		FUNC8(FUNC2(stdin), TCSADRAIN, &ttybuf);
	(void)FUNC6(SIGQUIT, savequit);
#else
# ifdef		TIOCEXT
	if (extproc) {
		flag = 1;
		if (ioctl(fileno(stdin), TIOCEXT, &flag) < 0)
			warn("TIOCEXT: on");
	}
# endif	/* TIOCEXT */
#endif
	(void)FUNC6(SIGINT, saveint);
	return (errs);
}