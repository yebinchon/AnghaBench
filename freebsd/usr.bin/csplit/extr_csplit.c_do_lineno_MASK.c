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
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  currfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 () ; 
 long lineno ; 
 int maxfiles ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int nfiles ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reps ; 
 int /*<<< orphan*/  sflag ; 
 long FUNC8 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC9(const char *expr)
{
	long lastline, tgtline;
	char *ep, *p;
	FILE *ofp;

	errno = 0;
	tgtline = FUNC8(expr, &ep, 10);
	if (tgtline <= 0 || errno != 0 || *ep != '\0')
		FUNC1(1, "%s: bad line number", expr);
	lastline = tgtline;
	if (lastline <= lineno)
		FUNC1(1, "%s: can't go backwards", expr);

	while (nfiles < maxfiles - 1) {
		ofp = FUNC6();
		while (lineno + 1 != lastline) {
			if ((p = FUNC5()) == NULL)
				FUNC1(1, "%ld: out of range", lastline);
			if (FUNC3(p, ofp) == EOF)
				break;
		}
		if (!sflag)
			FUNC7("%jd\n", (intmax_t)FUNC4(ofp));
		if (FUNC2(ofp) != 0)
			FUNC0(1, "%s", currfile);
		if (reps-- == 0)
			break;
		lastline += tgtline;
	} 
}