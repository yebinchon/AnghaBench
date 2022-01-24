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
 int BUFSIZ ; 
 scalar_t__ CONFIGVERS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ versreq ; 

__attribute__((used)) static void
FUNC7(void)
{
	FILE *ifp;
	char line[BUFSIZ];

	ifp = FUNC5();
	while (FUNC4(line, BUFSIZ, ifp) != 0) {
		if (*line != '%')
			continue;
		if (FUNC6(line, "%VERSREQ=", 9) != 0)
			continue;
		versreq = FUNC1(line + 9);
		if (FUNC0(versreq) == FUNC0(CONFIGVERS) &&
		    versreq <= CONFIGVERS)
			continue;
		FUNC2();
	}
	FUNC3(ifp);
}