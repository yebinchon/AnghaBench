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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  bsd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

FILE *
FUNC9(void)
{
	FILE *file;

	if (verbose) {
		(void) FUNC7("Writing category %s: ", FUNC1());
		(void) FUNC4(stdout);
	}

	/* make the parent directory */
	if (!bsd)
		(void) FUNC6(FUNC2(FUNC0()), 0755);

	/*
	 * note that we have to regenerate the file name, as dirname
	 * clobbered it.
	 */
	file = FUNC5(FUNC0(), "w");
	if (file == NULL) {
		FUNC3("%s", FUNC8(errno));
		return (NULL);
	}
	return (file);
}