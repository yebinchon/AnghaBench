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
 char* AT ; 
 int /*<<< orphan*/  BEAUTIFY ; 
 int BR ; 
 int CL ; 
 char* CU ; 
 int /*<<< orphan*/  DC ; 
 int DEFBR ; 
 int DEFFS ; 
 int DL ; 
 scalar_t__ DU ; 
 char* DV ; 
 int /*<<< orphan*/  ECHOCHECK ; 
 char* ES ; 
 int ET ; 
 char* EX ; 
 char* FO ; 
 int FS ; 
 int /*<<< orphan*/  HALFDUPLEX ; 
 int /*<<< orphan*/  HARDWAREFLOW ; 
 scalar_t__ HD ; 
 char* HO ; 
 int HW ; 
 int LD ; 
 char* NOSTR ; 
 char* PN ; 
 char* PR ; 
 int /*<<< orphan*/  RAISE ; 
 int /*<<< orphan*/  RAWFTP ; 
 char* RC ; 
 char* RE ; 
 int R_OK ; 
 int /*<<< orphan*/  SCRIPT ; 
 int /*<<< orphan*/  TABEXPAND ; 
 int /*<<< orphan*/  TAND ; 
 int TTYDISC ; 
 int /*<<< orphan*/  VERBOSE ; 
 int W_OK ; 
 char* _PATH_REMOTE ; 
 char* __progname ; 
 scalar_t__ FUNC0 (char*,int) ; 
 char*** caps ; 
 char** capstrings ; 
 int FUNC1 (char**,char**,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char**) ; 
 char** db_array ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(char *host)
{
	char **p, ***q, *bp, *rempath;
	int   stat;

	rempath = FUNC9("REMOTE");
	if (rempath != NULL) {
		if (*rempath != '/')
			/* we have an entry */
			FUNC4(rempath);
		else {	/* we have a path */
			db_array[1] = rempath;
			db_array[2] = _PATH_REMOTE;
		}
	}

	if ((stat = FUNC1(&bp, db_array, host)) < 0) {
		if ((DV != NULL) ||
		    (host[0] == '/' && FUNC0(DV = host, R_OK | W_OK) == 0)) {
			CU = DV;
			HO = host;
			HW = 1;
			DU = 0;
			if (!BR)
				BR = DEFBR;
			FS = DEFFS;
			return;
		}
		switch (stat) {
		case -1:
			FUNC8(stderr, "%s: unknown host %s\n", __progname,
			    host);
			break;
		case -2:
			FUNC8(stderr,
			    "%s: can't open host description file\n",
			    __progname);
			break;
		case -3:
			FUNC8(stderr,
			    "%s: possible reference loop in host description file\n", __progname);
			break;
		}
		FUNC7(3);
	}

	for (p = capstrings, q = caps; *p != NULL; p++, q++)
		if (**q == NULL)
			FUNC5(bp, *p, *q);
	if (!BR && (FUNC3(bp, "br", &BR) == -1))
		BR = DEFBR;
	if (!LD && (FUNC3(bp, "ld", &LD) == -1))
		LD = TTYDISC;
	if (FUNC3(bp, "fs", &FS) == -1)
		FS = DEFFS;
	if (DU < 0)
		DU = 0;
	else
		DU = FUNC2("du");
	if (DV == NOSTR) {
		FUNC8(stderr, "%s: missing device spec\n", host);
		FUNC7(3);
	}
	if (DU && CU == NOSTR)
		CU = DV;
	if (DU && PN == NOSTR) {
		FUNC8(stderr, "%s: missing phone number\n", host);
		FUNC7(3);
	}
	if (DU && AT == NOSTR) {
		FUNC8(stderr, "%s: missing acu type\n", host);
		FUNC7(3);
	}

	HD = FUNC2("hd");

	/*
	 * This effectively eliminates the "hw" attribute
	 *   from the description file
	 */
	if (!HW)
		HW = (CU == NOSTR) || (DU && FUNC6(DV, CU));
	HO = host;
	/*
	 * see if uppercase mode should be turned on initially
	 */
	if (FUNC2("ra"))
		FUNC10(FUNC11(RAISE), 1);
	if (FUNC2("ec"))
		FUNC10(FUNC11(ECHOCHECK), 1);
	if (FUNC2("be"))
		FUNC10(FUNC11(BEAUTIFY), 1);
	if (FUNC2("nb"))
		FUNC10(FUNC11(BEAUTIFY), 0);
	if (FUNC2("sc"))
		FUNC10(FUNC11(SCRIPT), 1);
	if (FUNC2("tb"))
		FUNC10(FUNC11(TABEXPAND), 1);
	if (FUNC2("vb"))
		FUNC10(FUNC11(VERBOSE), 1);
	if (FUNC2("nv"))
		FUNC10(FUNC11(VERBOSE), 0);
	if (FUNC2("ta"))
		FUNC10(FUNC11(TAND), 1);
	if (FUNC2("nt"))
		FUNC10(FUNC11(TAND), 0);
	if (FUNC2("rw"))
		FUNC10(FUNC11(RAWFTP), 1);
	if (FUNC2("hd"))
		FUNC10(FUNC11(HALFDUPLEX), 1);
	if (FUNC2("dc"))
		FUNC10(FUNC11(DC), 1);
	if (FUNC2("hf"))
		FUNC10(FUNC11(HARDWAREFLOW), 1);
	if (RE == NOSTR)
		RE = (char *)"tip.record";
	if (EX == NOSTR)
		EX = (char *)"\t\n\b\f";
	if (ES != NOSTR)
		FUNC12("es", ES);
	if (FO != NOSTR)
		FUNC12("fo", FO);
	if (PR != NOSTR)
		FUNC12("pr", PR);
	if (RC != NOSTR)
		FUNC12("rc", RC);
	if (FUNC3(bp, "dl", &DL) == -1)
		DL = 0;
	if (FUNC3(bp, "cl", &CL) == -1)
		CL = 0;
	if (FUNC3(bp, "et", &ET) == -1)
		ET = 10;
}