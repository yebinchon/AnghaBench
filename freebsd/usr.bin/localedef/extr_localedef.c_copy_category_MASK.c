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
typedef  int /*<<< orphan*/  srcpath ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsd ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC10 (char*,char) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int verbose ; 

void
FUNC12(char *src)
{
	char	srcpath[PATH_MAX];
	int	rv;

	(void) FUNC9(srcpath, sizeof (srcpath), "%s/%s",
	    src, FUNC2());
	rv = FUNC0(srcpath, R_OK);
	if ((rv != 0) && (FUNC10(srcpath, '/') == NULL)) {
		/* Maybe we should try the system locale */
		(void) FUNC9(srcpath, sizeof (srcpath),
		    "/usr/lib/locale/%s/%s", src, FUNC2());
		rv = FUNC0(srcpath, R_OK);
	}

	if (rv != 0) {
		FUNC5(stderr,"source locale data unavailable: %s", src);
		return;
	}

	if (verbose > 1) {
		(void) FUNC8("Copying category %s from %s: ",
		    FUNC2(), src);
		(void) FUNC4(stdout);
	}

	/* make the parent directory */
	if (!bsd)
		(void) FUNC7(FUNC3(FUNC1()), 0755);

	if (FUNC6(srcpath, FUNC1()) != 0) {
		FUNC5(stderr,"unable to copy locale data: %s",
			FUNC11(errno));
		return;
	}
	if (verbose > 1) {
		(void) FUNC8("done.\n");
	}
}