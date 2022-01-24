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

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FRAMESIZE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIOT ; 
 char STRIP_PAR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (char,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccc ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  defchars ; 
 int* fildes ; 
 int /*<<< orphan*/  intbuf ; 
 int /*<<< orphan*/  intcopy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int quit ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * repdes ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  term ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipout_pid ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,char*,int) ; 

__attribute__((used)) static void
FUNC16(char *buf, int fd, char *eofchars)
{
	int ct, eof;
	char c, buffer[BUFSIZ];
	char *p = buffer;
	size_t cnt;
	time_t start;
	sig_t f;
	char r;

	if (FUNC4(FUNC14(FRAMESIZE)) > BUFSIZ || FUNC4(FUNC14(FRAMESIZE)) < 1) {
		FUNC6("framesize must be >= 1 and <= %d\r\n", BUFSIZ);
		FUNC2(fd);
		return;
	}

	FUNC5(FD, buf, FUNC11(buf));
	quit = 0;
	FUNC3(tipout_pid, SIGIOT);
	FUNC8(repdes[0], (char *)&ccc, 1);  /* Wait until read process stops */

	/*
	 * finish command
	 */
	r = '\r';
	FUNC5(FD, &r, 1);
	do
		FUNC8(FD, &c, 1);
	while ((c&STRIP_PAR) != '\n');
	FUNC12(0, TCSAFLUSH, &defchars);

	(void) FUNC9(intbuf);
	f = FUNC10(SIGINT, intcopy);
	start = FUNC13(0);
	for (ct = 0; !quit;) {
		eof = FUNC8(FD, &c, 1) <= 0;
		c &= STRIP_PAR;
		if (quit)
			continue;
		if (eof || FUNC0(c, eofchars))
			break;
		if (c == 0)
			continue;	/* ignore nulls */
		if (c == '\r')
			continue;
		*p++ = c;

		if (c == '\n' && FUNC1(FUNC14(VERBOSE)))
			FUNC6("\r%d", ++ct);
		if ((cnt = (p-buffer)) == (size_t)FUNC4(FUNC14(FRAMESIZE))) {
			if ((size_t)FUNC15(fd, buffer, cnt) != cnt) {
				FUNC6("\r\nwrite error\r\n");
				quit = 1;
			}
			p = buffer;
		}
	}
	if ((cnt = (p-buffer)))
		if ((size_t)FUNC15(fd, buffer, cnt) != cnt)
			FUNC6("\r\nwrite error\r\n");

	if (FUNC1(FUNC14(VERBOSE)))
		FUNC7(" lines transferred in ", FUNC13(0)-start);
	FUNC12(0, TCSAFLUSH, &term);
	FUNC15(fildes[1], (char *)&ccc, 1);
	FUNC10(SIGINT, f);
	FUNC2(fd);
}