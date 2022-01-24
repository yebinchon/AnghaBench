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
struct tm {int tm_mon; int tm_mday; int tm_year; scalar_t__ tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  D_MD_ORDER ; 
 int F_VARIABLE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int MAXCOUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
#define  T_ERR 130 
#define  T_OK 129 
#define  T_PROCESS 128 
 scalar_t__ debug ; 
 int /*<<< orphan*/  doall ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * events ; 
 int /*<<< orphan*/ * extradata ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ncny ; 
 int /*<<< orphan*/  ndecsolstice ; 
 int /*<<< orphan*/  neaster ; 
 int /*<<< orphan*/  nfullmoon ; 
 int /*<<< orphan*/  njunsolstice ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nmarequinox ; 
 int /*<<< orphan*/  nnewmoon ; 
 int /*<<< orphan*/  npaskha ; 
 int /*<<< orphan*/  nsepequinox ; 
 int FUNC10 (char*,int*,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int FUNC19 (char*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC20(FILE *in, FILE *out)
{
	char *line = NULL;
	char *buf;
	size_t linecap = 0;
	ssize_t linelen;
	ssize_t l;
	static int d_first = -1;
	static int count = 0;
	int i;
	int month[MAXCOUNT];
	int day[MAXCOUNT];
	int year[MAXCOUNT];
	bool skip = false;
	char dbuf[80];
	char *pp, p;
	struct tm tm;
	int flags;

	/* Unused */
	tm.tm_sec = 0;
	tm.tm_min = 0;
	tm.tm_hour = 0;
	tm.tm_wday = 0;

	if (in == NULL)
		return (1);

	while ((linelen = FUNC6(&line, &linecap, in)) > 0) {
		if (*line == '#') {
			switch (FUNC19(line+1, out, &skip)) {
			case T_ERR:
				FUNC5(line);
				return (1);
			case T_OK:
				continue;
			case T_PROCESS:
				break;
			default:
				break;
			}
		}

		if (skip)
			continue;

		buf = line;
		for (l = linelen;
		     l > 0 && FUNC7((unsigned char)buf[l - 1]);
		     l--)
			;
		buf[l] = '\0';
		if (buf[0] == '\0')
			continue;

		/*
		 * Setting LANG in user's calendar was an old workaround
		 * for 'calendar -a' being run with C locale to properly
		 * print user's calendars in their native languages.
		 * Now that 'calendar -a' does fork with setusercontext(),
		 * and does not run iconv(), this variable has little use.
		 */
		if (FUNC18(buf, "LANG=", 5) == 0) {
			(void)FUNC12(LC_ALL, buf + 5);
			d_first = (*FUNC9(D_MD_ORDER) == 'd');
#ifdef WITH_ICONV
			if (!doall)
				set_new_encoding();
#endif
			FUNC13();
			continue;
		}
		/* Parse special definitions: Easter, Paskha etc */
		FUNC0("Easter=", 7, neaster);
		FUNC0("Paskha=", 7, npaskha);
		FUNC0("ChineseNewYear=", 15, ncny);
		FUNC0("NewMoon=", 8, nnewmoon);
		FUNC0("FullMoon=", 9, nfullmoon);
		FUNC0("MarEquinox=", 11, nmarequinox);
		FUNC0("SepEquinox=", 11, nsepequinox);
		FUNC0("JunSolstice=", 12, njunsolstice);
		FUNC0("DecSolstice=", 12, ndecsolstice);
		if (FUNC18(buf, "SEQUENCE=", 9) == 0) {
			FUNC14(buf + 9);
			continue;
		}

		/*
		 * If the line starts with a tab, the data has to be
		 * added to the previous line
		 */
		if (buf[0] == '\t') {
			for (i = 0; i < count; i++)
				FUNC2(events[i], buf);
			continue;
		}

		/* Get rid of leading spaces (non-standard) */
		while (FUNC7((unsigned char)buf[0]))
			FUNC8(buf, buf + 1, FUNC17(buf));

		/* No tab in the line, then not a valid line */
		if ((pp = FUNC15(buf, '\t')) == NULL)
			continue;

		/* Trim spaces in front of the tab */
		while (FUNC7((unsigned char)pp[-1]))
			pp--;

		p = *pp;
		*pp = '\0';
		if ((count = FUNC10(buf, year, month, day, &flags,
		    extradata)) == 0)
			continue;
		*pp = p;
		if (count < 0) {
			/* Show error status based on return value */
			if (debug)
				FUNC4(stderr, "Ignored: %s\n", buf);
			if (count == -1)
				continue;
			count = -count + 1;
		}

		/* Find the last tab */
		while (pp[1] == '\t')
			pp++;

		if (d_first < 0)
			d_first = (*FUNC9(D_MD_ORDER) == 'd');

		for (i = 0; i < count; i++) {
			tm.tm_mon = month[i] - 1;
			tm.tm_mday = day[i];
			tm.tm_year = year[i] - 1900;
			(void)FUNC16(dbuf, sizeof(dbuf),
			    d_first ? "%e %b" : "%b %e", &tm);
			if (debug)
				FUNC4(stderr, "got %s\n", pp);
			events[i] = FUNC1(year[i], month[i], day[i], dbuf,
			    ((flags &= F_VARIABLE) != 0) ? 1 : 0, pp,
			    extradata[i]);
		}
	}

	FUNC5(line);
	FUNC3(in);

	return (0);
}