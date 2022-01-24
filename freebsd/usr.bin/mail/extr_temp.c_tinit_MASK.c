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
 scalar_t__ PATHSIZE ; 
 char* _PATH_TMP ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* homedir ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ rcvmode ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* tmpdir ; 
 char* FUNC7 () ; 

void
FUNC8(void)
{
	char *cp;

	if ((tmpdir = FUNC1("TMPDIR")) == NULL || *tmpdir == '\0')
		tmpdir = _PATH_TMP;
	if ((tmpdir = FUNC5(tmpdir)) == NULL)
		FUNC0(1, "Out of memory");
	/* Strip trailing '/' if necessary */
	cp = tmpdir + FUNC6(tmpdir) - 1;
	while (cp > tmpdir && *cp == '/') {
		*cp = '\0';
		cp--;
	}

	/*
	 * It's okay to call savestr in here because main will
	 * do a spreserve() after us.
	 */
	if (myname != NULL) {
		if (FUNC2(myname) < 0)
			FUNC0(1, "\"%s\" is not a user of this system", myname);
	} else {
		if ((cp = FUNC7()) == NULL) {
			myname = "ubluit";
			if (rcvmode)
				FUNC0(1, "Who are you!?");
		} else
			myname = FUNC4(cp);
	}
	if ((cp = FUNC1("HOME")) == NULL || *cp == '\0' ||
	    FUNC6(cp) >= PATHSIZE)
		homedir = NULL;
	else
		homedir = FUNC4(cp);
	if (debug)
		FUNC3("user = %s, homedir = %s\n", myname,
		    homedir ? homedir : "NONE");
}