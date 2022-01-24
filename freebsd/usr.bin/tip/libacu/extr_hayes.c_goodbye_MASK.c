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
 int /*<<< orphan*/  DUMBUFLEN ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* dumbuf ; 
 char FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t rlen ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC10(void)
{
	int len;
	char c;

	FUNC8(FD, TCIOFLUSH);
	if (FUNC2()) {
		FUNC7(1);
#ifndef DEBUG
		FUNC8(FD, TCIOFLUSH);
#endif
		FUNC9(FD, "ATH0\r", 5);		/* insurance */
#ifndef DEBUG
		c = FUNC1("03");
		if (c != '0' && c != '3') {
			FUNC5("cannot hang up modem\n\r");
			FUNC5("please use 'tip dialer' to make sure the line is hung up\n\r");
		}
#endif
		FUNC7(1);
		FUNC3(FD, FIONREAD, &len);
#ifdef DEBUG
		printf("goodbye1: len=%d -- ", len);
		rlen = read(FD, dumbuf, min(len, DUMBUFLEN));
		dumbuf[rlen] = '\0';
		printf("read (%d): %s\r\n", rlen, dumbuf);
#endif
		FUNC9(FD, "ATv1\r", 5);
		FUNC7(1);
#ifdef DEBUG
		ioctl(FD, FIONREAD, &len);
		printf("goodbye2: len=%d -- ", len);
		rlen = read(FD, dumbuf, min(len, DUMBUFLEN));
		dumbuf[rlen] = '\0';
		printf("read (%d): %s\r\n", rlen, dumbuf);
#endif
	}
	FUNC8(FD, TCIOFLUSH);
	FUNC3(FD, TIOCCDTR, 0);		/* clear DTR (insurance) */
	FUNC0(FD);
}