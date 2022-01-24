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
typedef  int /*<<< orphan*/  tmp ;
typedef  long time_t ;
struct tm {int tm_mon; int tm_mday; int tm_year; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 struct tm* FUNC2 (long*) ; 
 long FUNC3 (struct tm*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct tm*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 char* FUNC8 (char*,char) ; 
 long FUNC9 (char const*,char**,int /*<<< orphan*/ ) ; 
 long FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**) ; 

time_t
FUNC12(time_t dt, char const * str)
{
	char           *p;
	int             i;
	long            val;
	struct tm      *T;

	if (dt == 0)
		dt = FUNC10(NULL);

	while (*str && FUNC0((unsigned char)*str))
		++str;

	if (FUNC4(str)) {
		dt = FUNC9(str, &p, 0);
	} else if (*str == '+' || *str == '-') {
		val = FUNC9(str, &p, 0);
		switch (*p) {
		case 'h':
		case 'H':	/* hours */
			dt += (val * 3600L);
			break;
		case '\0':
		case 'm':
		case 'M':	/* minutes */
			dt += (val * 60L);
			break;
		case 's':
		case 'S':	/* seconds */
			dt += val;
			break;
		case 'd':
		case 'D':	/* days */
			dt += (val * 86400L);
			break;
		case 'w':
		case 'W':	/* weeks */
			dt += (val * 604800L);
			break;
		case 'o':
		case 'O':	/* months */
			T = FUNC2(&dt);
			T->tm_mon += (int) val;
			i = T->tm_mday;
			goto fixday;
		case 'y':
		case 'Y':	/* years */
			T = FUNC2(&dt);
			T->tm_year += (int) val;
			i = T->tm_mday;
	fixday:
			dt = FUNC3(T);
			T = FUNC2(&dt);
			if (T->tm_mday != i) {
				T->tm_mday = 1;
				dt = FUNC3(T);
				dt -= (time_t) 86400L;
			}
		default:	/* unknown */
			break;	/* leave untouched */
		}
	} else {
		char           *q, tmp[64];

		/*
		 * Skip past any weekday prefix
		 */
		FUNC11(&str);
		FUNC7(tmp, str, sizeof(tmp));
		str = tmp;
		T = FUNC2(&dt);

		/*
		 * See if we can break off any timezone
		 */
		while ((q = FUNC8(tmp, ' ')) != NULL) {
			if (FUNC6("(+-", q[1]) != NULL)
				*q = '\0';
			else {
				int             j = 1;

				while (q[j] && FUNC1((unsigned char)q[j]))
					++j;
				if (q[j] == '\0')
					*q = '\0';
				else
					break;
			}
		}

		FUNC5(tmp, T);
		dt = FUNC3(T);
	}
	return dt;
}