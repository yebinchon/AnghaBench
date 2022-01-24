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
 char* CURS_LEFT ; 
 int /*<<< orphan*/ * CURS_RIGHT ; 
 void* CURS_UP ; 
 void* ENTER_BOLD ; 
 void* ENTER_DIM ; 
 void* ENTER_REVERSE ; 
 void* ENTER_STANDOUT ; 
 void* ENTER_UNDERLINE ; 
 void* EXIT_ATTRIBUTES ; 
 void* EXIT_STANDOUT ; 
 void* EXIT_UNDERLINE ; 
 void* UNDER_CHAR ; 
 int /*<<< orphan*/  must_use_uc ; 
 scalar_t__ FUNC0 (char*) ; 
 void* FUNC1 (char*,char**) ; 

__attribute__((used)) static void
FUNC2(void)
{
	static char tcapbuf[512];
	char *bp = tcapbuf;

	/* This nonsense attempts to work with both old and new termcap */
	CURS_UP =		FUNC1("up", &bp);
	CURS_RIGHT =		FUNC1("ri", &bp);
	if (CURS_RIGHT == NULL)
		CURS_RIGHT =	FUNC1("nd", &bp);
	CURS_LEFT =		FUNC1("le", &bp);
	if (CURS_LEFT == NULL)
		CURS_LEFT =	FUNC1("bc", &bp);
	if (CURS_LEFT == NULL && FUNC0("bs"))
		CURS_LEFT =	"\b";

	ENTER_STANDOUT =	FUNC1("so", &bp);
	EXIT_STANDOUT =		FUNC1("se", &bp);
	ENTER_UNDERLINE =	FUNC1("us", &bp);
	EXIT_UNDERLINE =	FUNC1("ue", &bp);
	ENTER_DIM =		FUNC1("mh", &bp);
	ENTER_BOLD =		FUNC1("md", &bp);
	ENTER_REVERSE =		FUNC1("mr", &bp);
	EXIT_ATTRIBUTES =	FUNC1("me", &bp);

	if (!ENTER_BOLD && ENTER_REVERSE)
		ENTER_BOLD = ENTER_REVERSE;
	if (!ENTER_BOLD && ENTER_STANDOUT)
		ENTER_BOLD = ENTER_STANDOUT;
	if (!ENTER_UNDERLINE && ENTER_STANDOUT) {
		ENTER_UNDERLINE = ENTER_STANDOUT;
		EXIT_UNDERLINE = EXIT_STANDOUT;
	}
	if (!ENTER_DIM && ENTER_STANDOUT)
		ENTER_DIM = ENTER_STANDOUT;
	if (!ENTER_REVERSE && ENTER_STANDOUT)
		ENTER_REVERSE = ENTER_STANDOUT;
	if (!EXIT_ATTRIBUTES && EXIT_STANDOUT)
		EXIT_ATTRIBUTES = EXIT_STANDOUT;

	/*
	 * Note that we use REVERSE for the alternate character set,
	 * not the as/ae capabilities.  This is because we are modelling
	 * the model 37 teletype (since that's what nroff outputs) and
	 * the typical as/ae is more of a graphics set, not the greek
	 * letters the 37 has.
	 */

	UNDER_CHAR =		FUNC1("uc", &bp);
	must_use_uc = (UNDER_CHAR && !ENTER_UNDERLINE);
}