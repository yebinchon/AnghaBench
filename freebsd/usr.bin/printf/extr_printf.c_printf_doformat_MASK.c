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
typedef  double uintmax_t ;
typedef  double intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  digits ; 
 char* end_fmt ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char** gargv ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (long double*,int) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (double*,double*,int) ; 
 char* FUNC8 () ; 
 scalar_t__ FUNC9 (char) ; 
 char** maxargv ; 
 char* FUNC10 (char*,char) ; 
 int myargc ; 
 char** myargv ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char) ; 
 char* FUNC12 (char*) ; 
 char FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static char *
FUNC17(char *fmt, int *rval)
{
	static const char skip1[] = "#'-+ 0";
	int fieldwidth, haveprec, havewidth, mod_ldbl, precision;
	char convch, nextch;
	char start[FUNC14(fmt) + 1];
	char **fargv;
	char *dptr;
	int l;

	dptr = start;
	*dptr++ = '%';
	*dptr = 0;

	fmt++;

	/* look for "n$" field index specifier */
	l = FUNC15(fmt, digits);
	if ((l > 0) && (fmt[l] == '$')) {
		int idx = FUNC1(fmt);
		if (idx <= myargc) {
			gargv = &myargv[idx - 1];
		} else {
			gargv = &myargv[myargc];
		}
		if (gargv > maxargv)
			maxargv = gargv;
		fmt += l + 1;

		/* save format argument */
		fargv = gargv;
	} else {
		fargv = NULL;
	}

	/* skip to field width */
	while (*fmt && FUNC11(skip1, *fmt) != NULL) {
		*dptr++ = *fmt++;
		*dptr = 0;
	}

	if (*fmt == '*') {

		fmt++;
		l = FUNC15(fmt, digits);
		if ((l > 0) && (fmt[l] == '$')) {
			int idx = FUNC1(fmt);
			if (fargv == NULL) {
				FUNC16("incomplete use of n$");
				return (NULL);
			}
			if (idx <= myargc) {
				gargv = &myargv[idx - 1];
			} else {
				gargv = &myargv[myargc];
			}
			fmt += l + 1;
		} else if (fargv != NULL) {
			FUNC16("incomplete use of n$");
			return (NULL);
		}

		if (FUNC6(&fieldwidth))
			return (NULL);
		if (gargv > maxargv)
			maxargv = gargv;
		havewidth = 1;

		*dptr++ = '*';
		*dptr = 0;
	} else {
		havewidth = 0;

		/* skip to possible '.', get following precision */
		while (FUNC9(*fmt)) {
			*dptr++ = *fmt++;
			*dptr = 0;
		}
	}

	if (*fmt == '.') {
		/* precision present? */
		fmt++;
		*dptr++ = '.';

		if (*fmt == '*') {

			fmt++;
			l = FUNC15(fmt, digits);
			if ((l > 0) && (fmt[l] == '$')) {
				int idx = FUNC1(fmt);
				if (fargv == NULL) {
					FUNC16("incomplete use of n$");
					return (NULL);
				}
				if (idx <= myargc) {
					gargv = &myargv[idx - 1];
				} else {
					gargv = &myargv[myargc];
				}
				fmt += l + 1;
			} else if (fargv != NULL) {
				FUNC16("incomplete use of n$");
				return (NULL);
			}

			if (FUNC6(&precision))
				return (NULL);
			if (gargv > maxargv)
				maxargv = gargv;
			haveprec = 1;
			*dptr++ = '*';
			*dptr = 0;
		} else {
			haveprec = 0;

			/* skip to conversion char */
			while (FUNC9(*fmt)) {
				*dptr++ = *fmt++;
				*dptr = 0;
			}
		}
	} else
		haveprec = 0;
	if (!*fmt) {
		FUNC16("missing format character");
		return (NULL);
	}
	*dptr++ = *fmt;
	*dptr = 0;

	/*
	 * Look for a length modifier.  POSIX doesn't have these, so
	 * we only support them for floating-point conversions, which
	 * are extensions.  This is useful because the L modifier can
	 * be used to gain extra range and precision, while omitting
	 * it is more likely to produce consistent results on different
	 * architectures.  This is not so important for integers
	 * because overflow is the only bad thing that can happen to
	 * them, but consider the command  printf %a 1.1
	 */
	if (*fmt == 'L') {
		mod_ldbl = 1;
		fmt++;
		if (!FUNC11("aAeEfFgG", *fmt)) {
			FUNC16("bad modifier L for %%%c", *fmt);
			return (NULL);
		}
	} else {
		mod_ldbl = 0;
	}

	/* save the current arg offset, and set to the format arg */
	if (fargv != NULL) {
		gargv = fargv;
	}

	convch = *fmt;
	nextch = *++fmt;

	*fmt = '\0';
	switch (convch) {
	case 'b': {
		size_t len;
		char *p;
		int getout;

		/* Convert "b" to "s" for output. */
		start[FUNC14(start) - 1] = 's';
		if ((p = FUNC12(FUNC8())) == NULL) {
			FUNC16("%s", FUNC13(ENOMEM));
			return (NULL);
		}
		getout = FUNC2(p, 0, &len);
		FUNC0(start, p);
		/* Restore format for next loop. */

		FUNC3(p);
		if (getout)
			return (end_fmt);
		break;
	}
	case 'c': {
		char p;

		p = FUNC4();
		if (p != '\0')
			FUNC0(start, p);
		break;
	}
	case 's': {
		const char *p;

		p = FUNC8();
		FUNC0(start, p);
		break;
	}
	case 'd': case 'i': case 'o': case 'u': case 'x': case 'X': {
		char *f;
		intmax_t val;
		uintmax_t uval;
		int signedconv;

		signedconv = (convch == 'd' || convch == 'i');
		if ((f = FUNC10(start, convch)) == NULL)
			return (NULL);
		if (FUNC7(&val, &uval, signedconv))
			*rval = 1;
		if (signedconv)
			FUNC0(f, val);
		else
			FUNC0(f, uval);
		break;
	}
	case 'e': case 'E':
	case 'f': case 'F':
	case 'g': case 'G':
	case 'a': case 'A': {
		long double p;

		if (FUNC5(&p, mod_ldbl))
			*rval = 1;
		if (mod_ldbl)
			FUNC0(start, p);
		else
			FUNC0(start, (double)p);
		break;
	}
	default:
		FUNC16("illegal format character %c", convch);
		return (NULL);
	}
	*fmt = nextch;
	/* return the gargv to the next element */
	return (fmt);
}