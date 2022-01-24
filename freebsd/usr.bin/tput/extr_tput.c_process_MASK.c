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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int,char const*) ; 
 int /*<<< orphan*/  outc ; 
 char* FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char,char const*) ; 

__attribute__((used)) static char **
FUNC5(const char *cap, char *str, char **argv)
{
	static const char errfew[] =
	    "not enough arguments (%d) for capability `%s'";
	static const char errmany[] =
	    "too many arguments (%d) for capability `%s'";
	static const char erresc[] =
	    "unknown %% escape `%c' for capability `%s'";
	char *cp;
	int arg_need, arg_rows, arg_cols;

	/* Count how many values we need for this capability. */
	for (cp = str, arg_need = 0; *cp != '\0'; cp++)
		if (*cp == '%')
			    switch (*++cp) {
			    case 'd':
			    case '2':
			    case '3':
			    case '.':
			    case '+':
				    arg_need++;
				    break;
			    case '%':
			    case '>':
			    case 'i':
			    case 'r':
			    case 'n':
			    case 'B':
			    case 'D':
				    break;
			    case 'p':
				    if (cp[1]) {
					cp++;
					break;
				    }
			    default:
				/*
				 * hpux has lot's of them, but we complain
				 */
				 FUNC4(erresc, *cp, cap);
			    }

	/* And print them. */
	switch (arg_need) {
	case 0:
		(void)FUNC3(str, 1, outc);
		break;
	case 1:
		arg_cols = 0;

		if (*++argv == NULL || *argv[0] == '\0')
			FUNC1(2, errfew, 1, cap);
		arg_rows = FUNC0(*argv);

		(void)FUNC3(FUNC2(str, arg_cols, arg_rows), 1, outc);
		break;
	case 2:
		if (*++argv == NULL || *argv[0] == '\0')
			FUNC1(2, errfew, 2, cap);
		arg_cols = FUNC0(*argv);

		if (*++argv == NULL || *argv[0] == '\0')
			FUNC1(2, errfew, 2, cap);
		arg_rows = FUNC0(*argv);

		(void) FUNC3(FUNC2(str, arg_cols, arg_rows), arg_rows, outc);
		break;

	default:
		FUNC1(2, errmany, arg_need, cap);
	}
	return (argv);
}