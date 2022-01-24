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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(char *argv[])
{
	char *ap;

	while ((ap = *++argv)) {
		/* Return if "--" or not "-[0-9]*". */
		if (ap[0] != '-' || ap[1] == '-' || !FUNC1(ap[1]))
			return;
		if ((ap = FUNC2(FUNC4(*argv) + 2)) == NULL)
			FUNC0(1, NULL);
		ap[0] = '-';
		ap[1] = 'n';
		(void)FUNC3(ap + 2, *argv + 1);
		*argv = ap;
	}
}