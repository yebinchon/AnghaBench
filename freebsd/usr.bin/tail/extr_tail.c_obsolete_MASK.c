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
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(char *argv[])
{
	char *ap, *p, *t;
	size_t len;
	char *start;

	while ((ap = *++argv)) {
		/* Return if "--" or not an option of any form. */
		if (ap[0] != '-') {
			if (ap[0] != '+')
				return;
		} else if (ap[1] == '-')
			return;

		switch(*++ap) {
		/* Old-style option. */
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':

			/* Malloc space for dash, new option and argument. */
			len = FUNC4(*argv);
			if ((start = p = FUNC2(len + 3)) == NULL)
				FUNC0(1, "malloc");
			*p++ = '-';

			/*
			 * Go to the end of the option argument.  Save off any
			 * trailing options (-3lf) and translate any trailing
			 * output style characters.
			 */
			t = *argv + len - 1;
			if (*t == 'F' || *t == 'f' || *t == 'r') {
				*p++ = *t;
				*t-- = '\0';
			}
			switch(*t) {
			case 'b':
				*p++ = 'b';
				*t = '\0';
				break;
			case 'c':
				*p++ = 'c';
				*t = '\0';
				break;
			case 'l':
				*t = '\0';
				/* FALLTHROUGH */
			case '0': case '1': case '2': case '3': case '4':
			case '5': case '6': case '7': case '8': case '9':
				*p++ = 'n';
				break;
			default:
				FUNC1(1, "illegal option -- %s", *argv);
			}
			*p++ = *argv[0];
			(void)FUNC3(p, ap);
			*argv = start;
			continue;

		/*
		 * Options w/ arguments, skip the argument and continue
		 * with the next option.
		 */
		case 'b':
		case 'c':
		case 'n':
			if (!ap[1])
				++argv;
			/* FALLTHROUGH */
		/* Options w/o arguments, continue with the next option. */
		case 'F':
		case 'f':
		case 'r':
			continue;

		/* Illegal option, return and let getopt handle it. */
		default:
			return;
		}
	}
}