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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(char *argv[])
{
	int len;
	char *ap, *p, *start;

	while ((ap = *++argv)) {
		/* Return if "--" or not an option of any form. */
		if (ap[0] != '-') {
			if (ap[0] != '+')
				return;
		} else if (ap[1] == '-')
			return;
		if (!FUNC1((unsigned char)ap[1]))
			continue;
		/*
		 * Digit signifies an old-style option.  Malloc space for dash,
		 * new option and argument.
		 */
		len = FUNC4(ap);
		if ((start = p = FUNC2(len + 3)) == NULL)
			FUNC0(1, "malloc");
		*p++ = '-';
		*p++ = ap[0] == '+' ? 's' : 'f';
		(void)FUNC3(p, ap + 1);
		*argv = start;
	}
}