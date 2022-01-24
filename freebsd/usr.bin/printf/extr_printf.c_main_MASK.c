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
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  LC_ALL ; 
 char** argptr ; 
 char* end_fmt ; 
 int /*<<< orphan*/  FUNC0 (char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 char** gargv ; 
 int FUNC2 (int,char**,char*) ; 
 char** maxargv ; 
 size_t myargc ; 
 char** myargv ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ optind ; 
 char* FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int argc, char *argv[])
{
	size_t len;
	int end, rval;
	char *format, *fmt, *start;
#ifndef SHELL
	int ch;

	(void) FUNC6(LC_ALL, "");
#endif

#ifdef SHELL
	nextopt("");
	argc -= argptr - argv;
	argv = argptr;
#else
	while ((ch = FUNC2(argc, argv, "")) != -1)
		switch (ch) {
		case '?':
		default:
			FUNC7();
			return (1);
		}
	argc -= optind;
	argv += optind;
#endif

	if (argc < 1) {
		FUNC7();
		return (1);
	}

#ifdef SHELL
	INTOFF;
#endif
	/*
	 * Basic algorithm is to scan the format string for conversion
	 * specifications -- once one is found, find out if the field
	 * width or precision is a '*'; if it is, gather up value.  Note,
	 * format strings are reused as necessary to use up the provided
	 * arguments, arguments of zero/null string are provided to use
	 * up the format string.
	 */
	fmt = format = *argv;
	FUNC0(fmt, 1, &len);		/* backslash interpretation */
	rval = end = 0;
	gargv = ++argv;

	for (;;) {
		maxargv = gargv;

		myargv = gargv;
		for (myargc = 0; gargv[myargc]; myargc++)
			/* nop */;
		start = fmt;
		while (fmt < format + len) {
			if (fmt[0] == '%') {
				FUNC1(start, 1, fmt - start, stdout);
				if (fmt[1] == '%') {
					/* %% prints a % */
					FUNC5('%');
					fmt += 2;
				} else {
					fmt = FUNC4(fmt, &rval);
					if (fmt == NULL || fmt == end_fmt) {
#ifdef SHELL
						INTON;
#endif
						return (fmt == NULL ? 1 : rval);
					}
					end = 0;
				}
				start = fmt;
			} else
				fmt++;
			if (gargv > maxargv)
				maxargv = gargv;
		}
		gargv = maxargv;

		if (end == 1) {
			FUNC8("missing format character");
#ifdef SHELL
			INTON;
#endif
			return (1);
		}
		FUNC1(start, 1, fmt - start, stdout);
		if (!*gargv) {
#ifdef SHELL
			INTON;
#endif
			return (rval);
		}
		/* Restart at the beginning of the format string. */
		fmt = format;
		end = 1;
	}
	/* NOTREACHED */
}