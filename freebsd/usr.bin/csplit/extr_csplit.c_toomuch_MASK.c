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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  currfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 long lineno ; 
 int /*<<< orphan*/ * overfile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ truncofs ; 

__attribute__((used)) static void
FUNC11(FILE *ofp, long n)
{
	char buf[BUFSIZ];
	size_t i, nread;

	if (overfile != NULL) {
		/*
		 * Truncate the previous file we overflowed into back to
		 * the correct length, close it.
		 */
		if (FUNC4(overfile) != 0)
			FUNC0(1, "overflow");
		if (FUNC9(FUNC5(overfile), truncofs) != 0)
			FUNC0(1, "overflow");
		if (FUNC2(overfile) != 0)
			FUNC0(1, "overflow");
		overfile = NULL;
	}

	if (n == 0)
		/* Just tidying up */
		return;

	lineno -= n;

	/*
	 * Wind the overflow file backwards to `n' lines before the
	 * current one.
	 */
	do {
		if (FUNC8(ofp) < (off_t)sizeof(buf))
			FUNC10(ofp);
		else
			FUNC7(ofp, -(off_t)sizeof(buf), SEEK_CUR);
		if (FUNC3(ofp))
			FUNC1(1, "%s: can't seek", currfile);
		if ((nread = FUNC6(buf, 1, sizeof(buf), ofp)) == 0)
			FUNC1(1, "can't read overflowed output");
		if (FUNC7(ofp, -(off_t)nread, SEEK_CUR) != 0)
			FUNC0(1, "%s", currfile);
		for (i = 1; i <= nread; i++)
			if (buf[nread - i] == '\n' && n-- == 0)
				break;
		if (FUNC8(ofp) == 0)
			break;
	} while (n > 0);
	if (FUNC7(ofp, nread - i + 1, SEEK_CUR) != 0)
		FUNC0(1, "%s", currfile);

	/*
	 * get_line() will read from here. Next call will truncate to
	 * truncofs in this file.
	 */
	overfile = ofp;
	truncofs = FUNC8(overfile);
}