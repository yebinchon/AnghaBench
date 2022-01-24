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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SCRIPT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fildes ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * fscript ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * repdes ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigbuf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(int signo)
{
	char c, line[256];
	char *pline = line;
	char reply;

	FUNC4(fildes[0], &c, 1);
	while (c != '\n' && (size_t)(pline - line) < sizeof(line)) {
		*pline++ = c;
		FUNC4(fildes[0], &c, 1);
	}
	*pline = '\0';
	if (FUNC0(FUNC6(SCRIPT)) && fscript != NULL)
		FUNC1(fscript);
	if (pline == line) {
		FUNC5(FUNC6(SCRIPT), FALSE);
		reply = 'y';
	} else {
		if ((fscript = FUNC2(line, "a")) == NULL)
			reply = 'n';
		else {
			reply = 'y';
			FUNC5(FUNC6(SCRIPT), TRUE);
		}
	}
	FUNC7(repdes[1], &reply, 1);
	FUNC3(sigbuf, 1);
}