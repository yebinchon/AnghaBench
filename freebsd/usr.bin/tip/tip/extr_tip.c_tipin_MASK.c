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
 int EOF ; 
 int /*<<< orphan*/  EOL ; 
 int /*<<< orphan*/  ESCAPE ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FORCE ; 
 int /*<<< orphan*/  HALFDUPLEX ; 
 int /*<<< orphan*/  RAISE ; 
 int /*<<< orphan*/  RAISECHAR ; 
 int /*<<< orphan*/  SCRIPT ; 
 int STRIP_PAR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cumode ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  noesc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void)
{
	int bol = 1;
	int gch;
	char ch;

	/*
	 * Kinda klugey here...
	 *   check for scripting being turned on from the .tiprc file,
	 *   but be careful about just using setscript(), as we may
	 *   send a SIGEMT before tipout has a chance to set up catching
	 *   it; so wait a second, then setscript()
	 */
	if (FUNC1(FUNC12(SCRIPT))) {
		FUNC10(1);
		FUNC9();
	}

	while (1) {
		gch = FUNC4();
		if (gch == EOF)
			return;
		gch = gch & STRIP_PAR;
		if ((gch == FUNC2(FUNC12(ESCAPE))) && bol) {
			if (!noesc) {
				gch = FUNC3();
				if (gch == EOF)
					return;
				if (gch == 0)
					continue;
			}
		} else if (!cumode && gch == FUNC2(FUNC12(RAISECHAR))) {
			FUNC8(FUNC12(RAISE), !FUNC1(FUNC12(RAISE)));
			continue;
		} else if (gch == '\r') {
			bol = 1;
			ch = gch;
			FUNC6(FD, &ch, 1);
			if (FUNC1(FUNC12(HALFDUPLEX)))
				FUNC7("\r\n");
			continue;
		} else if (!cumode && gch == FUNC2(FUNC12(FORCE)))
			gch = FUNC4();
			if (gch == EOF)
				return;
			gch = gch & STRIP_PAR;
		bol = FUNC0(gch, FUNC12(EOL));
		if (FUNC1(FUNC12(RAISE)) && FUNC5(gch))
			gch = FUNC11(gch);
		ch = gch;
		FUNC6(FD, &ch, 1);
		if (FUNC1(FUNC12(HALFDUPLEX)))
			FUNC7("%c", ch);
	}
}