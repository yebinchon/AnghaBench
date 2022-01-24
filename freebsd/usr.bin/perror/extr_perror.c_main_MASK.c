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
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (long) ; 
 long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int 
FUNC7(int argc, char **argv)
{
	char *cp;
	char *errstr;
	long errnum;

	(void) FUNC3(LC_MESSAGES, "");
	if (argc != 2)
		FUNC6();

	errno = 0;

	errnum = FUNC5(argv[1], &cp, 0);

	if (errno != 0)
		FUNC0(1, NULL);

	if ((errstr = FUNC4(errnum)) == NULL) 
		FUNC0(1, NULL);

	FUNC2("%s\n", errstr);

	FUNC1(0);
}