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

/* Variables and functions */
 int B1200 ; 
 int FD ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  Sjbuf ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCMBIC ; 
 int /*<<< orphan*/  TIOCMBIS ; 
 int TIOCM_ST ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alrm_timeout ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct termios*) ; 
 int /*<<< orphan*/  FUNC3 (struct termios*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct termios*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,struct termios*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int) ; 

__attribute__((used)) static int
FUNC19(char *num, char *acu, int df03)
{
	int f = FD;
	struct termios cntrl;
	int speed = 0;
	char c = '\0';

	FUNC15(f, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC16(f, TCSANOW, &cntrl);
	if (FUNC10(Sjbuf)) {
		FUNC8("connection timed out\r\n");
		FUNC5();
		return (0);
	}
	if (FUNC1(FUNC17(VERBOSE)))
		FUNC8("\ndialing...");
	FUNC6(stdout);
#ifdef TIOCMSET
	if (df03) {
		int st = TIOCM_ST;	/* secondary Transmit flag */

		tcgetattr(f, &cntrl);
		speed = cfgetospeed(&cntrl);
		if (speed != B1200) {	/* must dial at 1200 baud */
			cfsetospeed(&cntrl, B1200);
			cfsetispeed(&cntrl, B1200);
			tcsetattr(f, TCSAFLUSH, &cntrl);
			ioctl(f, TIOCMBIC, &st); /* clear ST for 300 baud */
		} else
			ioctl(f, TIOCMBIS, &st); /* set ST for 1200 baud */
	}
#endif
	FUNC11(SIGALRM, alrm_timeout);
	FUNC0(5 * FUNC13(num) + 10);
	FUNC14(f, TCIOFLUSH);
	FUNC18(f, "\001", 1);
	FUNC12(1);
	FUNC18(f, "\002", 1);
	FUNC18(f, num, FUNC13(num));
	FUNC9(f, &c, 1);
#ifdef TIOCMSET
	if (df03 && speed != B1200) {
		cfsetospeed(&cntrl, speed);
		cfsetispeed(&cntrl, speed);
		tcsetattr(f, TCSAFLUSH, &cntrl);
	}
#endif
	return (c == 'A');
}