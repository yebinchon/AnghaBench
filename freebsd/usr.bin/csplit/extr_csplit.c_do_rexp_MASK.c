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
typedef  int /*<<< orphan*/  regex_t ;
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int REG_BASIC ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  currfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sflag ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (char*,char const) ; 
 long FUNC14 (char*,char**,int) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ truncofs ; 

__attribute__((used)) static void
FUNC17(const char *expr)
{
	regex_t cre;
	intmax_t nwritten;
	long ofs;
	int first;
	char *ecopy, *ep, *p, *pofs, *re;
	FILE *ofp;

	if ((ecopy = FUNC12(expr)) == NULL)
		FUNC0(1, "strdup");

	re = ecopy + 1;
	if ((pofs = FUNC13(ecopy, *expr)) == NULL || pofs[-1] == '\\')
		FUNC1(1, "%s: missing trailing %c", expr, *expr);
	*pofs++ = '\0';

	if (*pofs != '\0') {
		errno = 0;
		ofs = FUNC14(pofs, &ep, 10);
		if (*ep != '\0' || errno != 0)
			FUNC1(1, "%s: bad offset", pofs);
	} else
		ofs = 0;

	if (FUNC9(&cre, re, REG_BASIC|REG_NOSUB) != 0)
		FUNC1(1, "%s: bad regular expression", re);

	if (*expr == '/')
		/* /regexp/: Save results to a file. */
		ofp = FUNC7();
	else {
		/* %regexp%: Make a temporary file for overflow. */
		if ((ofp = FUNC15()) == NULL)
			FUNC0(1, "tmpfile");
	}

	/* Read and output lines until we get a match. */
	first = 1;
	while ((p = FUNC6()) != NULL) {
		if (FUNC3(p, ofp) == EOF)
			break;
		if (!first && FUNC10(&cre, p, 0, NULL, 0) == 0)
			break;
		first = 0;
	}

	if (p == NULL) {
		FUNC16(NULL, 0);
		FUNC1(1, "%s: no match", re);
	}

	if (ofs <= 0) {
		/*
		 * Negative (or zero) offset: throw back any lines we should
		 * not have read yet.
		  */
		if (p != NULL) {
			FUNC16(ofp, -ofs + 1);
			nwritten = (intmax_t)truncofs;
		} else
			nwritten = (intmax_t)FUNC5(ofp);
	} else {
		/*
		 * Positive offset: copy the requested number of lines
		 * after the match.
		 */
		while (--ofs > 0 && (p = FUNC6()) != NULL)
			FUNC3(p, ofp);
		FUNC16(NULL, 0);
		nwritten = (intmax_t)FUNC5(ofp);
		if (FUNC2(ofp) != 0)
			FUNC0(1, "%s", currfile);
	}

	if (!sflag && *expr == '/')
		FUNC8("%jd\n", nwritten);

	FUNC11(&cre);
	FUNC4(ecopy);
}