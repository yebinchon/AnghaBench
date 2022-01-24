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
 int DETAILSHAPE ; 
 int ICOLBOUNDS ; 
 int MTRANSPOSE ; 
 int NOARGS ; 
 int NOTRIMENDCOL ; 
 int NULLPAD ; 
 int OCOLBOUNDS ; 
 int ONEISEPONLY ; 
 int ONEOSEPONLY ; 
 int ONEPERCHAR ; 
 int ONEPERLINE ; 
 int RECYCLE ; 
 int RIGHTADJUST ; 
 int SHAPEONLY ; 
 int SKIPPRINT ; 
 int SQUEEZE ; 
 int TRANSPOSE ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  cord ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int flags ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int*,char*,int /*<<< orphan*/ ) ; 
 int gutter ; 
 int /*<<< orphan*/  icbd ; 
 char isep ; 
 int /*<<< orphan*/  ocbd ; 
 void* ocols ; 
 void* orows ; 
 char osep ; 
 int owidth ; 
 int propgutter ; 
 int skip ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(int ac, char *av[])
{
	char *p;

	if (ac == 1) {
		flags |= NOARGS | TRANSPOSE;
	}
	while (--ac && **++av == '-')
		for (p = *av+1; *p; p++)
			switch (*p) {
			case 'T':
				flags |= MTRANSPOSE;
			case 't':
				flags |= TRANSPOSE;
				break;
			case 'c':		/* input col. separator */
				flags |= ONEISEPONLY;
			case 's':		/* one or more allowed */
				if (p[1])
					isep = *++p;
				else
					isep = '\t';	/* default is ^I */
				break;
			case 'C':
				flags |= ONEOSEPONLY;
			case 'S':
				if (p[1])
					osep = *++p;
				else
					osep = '\t';	/* default is ^I */
				break;
			case 'w':		/* window width, default 80 */
				p = FUNC3(&owidth, p, 0);
				if (owidth <= 0)
					FUNC1(1, "width must be a positive integer");
				break;
			case 'K':			/* skip N lines */
				flags |= SKIPPRINT;
			case 'k':			/* skip, do not print */
				p = FUNC3(&skip, p, 0);
				if (!skip)
					skip = 1;
				break;
			case 'm':
				flags |= NOTRIMENDCOL;
				break;
			case 'g':		/* gutter space */
				p = FUNC3(&gutter, p, 0);
				break;
			case 'G':
				p = FUNC3(&propgutter, p, 0);
				break;
			case 'e':		/* each line is an entry */
				flags |= ONEPERLINE;
				break;
			case 'E':
				flags |= ONEPERCHAR;
				break;
			case 'j':			/* right adjust */
				flags |= RIGHTADJUST;
				break;
			case 'n':	/* null padding for missing values */
				flags |= NULLPAD;
				break;
			case 'y':
				flags |= RECYCLE;
				break;
			case 'H':			/* print shape only */
				flags |= DETAILSHAPE;
			case 'h':
				flags |= SHAPEONLY;
				break;
			case 'z':			/* squeeze col width */
				flags |= SQUEEZE;
				break;
			/*case 'p':
				ipagespace = atoi(++p);	(default is 1)
				break;*/
			case 'o':			/* col order */
				p = FUNC2(&cord, p);
				break;
			case 'b':
				flags |= ICOLBOUNDS;
				p = FUNC2(&icbd, p);
				break;
			case 'B':
				flags |= OCOLBOUNDS;
				p = FUNC2(&ocbd, p);
				break;
			default:
				FUNC4();
			}
	/*if (!osep)
		osep = isep;*/
	switch (ac) {
	/*case 3:
		opages = atoi(av[2]);*/
	case 2:
		if ((ocols = FUNC0(av[1])) < 0)
			ocols = 0;
	case 1:
		if ((orows = FUNC0(av[0])) < 0)
			orows = 0;
	case 0:
		break;
	default:
		FUNC1(1, "too many arguments");
	}
}