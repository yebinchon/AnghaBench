#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct termios {int dummy; } ;
typedef  int /*<<< orphan*/  sig_t ;
struct TYPE_2__ {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAUDRATE ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 TYPE_1__ term ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

int
FUNC13(char *num, char *acu)
{
	sig_t func;
	int ok;
	int slow = FUNC3(FUNC11(BAUDRATE)) < 1200;
	char phone[50];
	struct termios cntrl;

	/*
	 * Get in synch
	 */
	FUNC12("I\r", 1 + slow);
	FUNC12("I\r", 1 + slow);
	FUNC12("I\r", 1 + slow);
	FUNC12("\005\r", 2 + slow);
	if (!FUNC1("READY")) {
		FUNC4("can't synchronize with vadic 3451\n");
#ifdef ACULOG
		logent(value(HOST), num, "vadic", "can't synch up");
#endif
		return (0);
	}
	FUNC9(FD, &cntrl);
	term.c_cflag |= HUPCL;
	FUNC10(FD, TCSANOW, &cntrl);
	FUNC6(1);
	FUNC12("D\r", 2 + slow);
	if (!FUNC1("NUMBER?")) {
		FUNC4("Vadic will not accept dial command\n");
#ifdef ACULOG
		logent(value(HOST), num, "vadic", "will not accept dial");
#endif
		return (0);
	}
	(void)FUNC7(phone, sizeof phone, "%s\r", num);
	FUNC12(phone, 1 + slow);
	if (!FUNC1(phone)) {
		FUNC4("Vadic will not accept phone number\n");
#ifdef ACULOG
		logent(value(HOST), num, "vadic", "will not accept number");
#endif
		return (0);
	}
	func = FUNC5(SIGINT,SIG_IGN);
	/*
	 * You cannot interrupt the Vadic when its dialing;
	 * even dropping DTR does not work (definitely a
	 * brain damaged design).
	 */
	FUNC12("\r", 1 + slow);
	FUNC12("\r", 1 + slow);
	if (!FUNC1("DIALING:")) {
		FUNC4("Vadic failed to dial\n");
#ifdef ACULOG
		logent(value(HOST), num, "vadic", "failed to dial");
#endif
		return (0);
	}
	if (FUNC0(FUNC11(VERBOSE)))
		FUNC4("\ndialing...");
	ok = FUNC1("ON LINE");
	FUNC5(SIGINT, func);
	if (!ok) {
		FUNC4("call failed\n");
#ifdef ACULOG
		logent(value(HOST), num, "vadic", "call failed");
#endif
		return (0);
	}
	FUNC8(FD, TCIOFLUSH);
	return (1);
}