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
 int CLCNT ; 
 int /*<<< orphan*/  D_MD_ORDER ; 
 int HEADLEN ; 
 int /*<<< orphan*/  INCHAR ; 
 void* INGAP ; 
 int /*<<< orphan*/  LC_TIME ; 
 int LINES ; 
 int /*<<< orphan*/  NMCHAR ; 
 int NMWD ; 
 int /*<<< orphan*/  OCHAR ; 
 void* OGAP ; 
 int PGWD ; 
 int /*<<< orphan*/  SCHAR ; 
 int SPGWD ; 
 int TAILLEN ; 
 int /*<<< orphan*/  TIMEFMTD ; 
 int /*<<< orphan*/  TIMEFMTM ; 
 scalar_t__ across ; 
 int /*<<< orphan*/  addone ; 
 void* FUNC0 (char*) ; 
 int clcnt ; 
 int colwd ; 
 scalar_t__ dspace ; 
 int FUNC1 (int,char**,char*) ; 
 char* eoptarg ; 
 int eoptind ; 
 int /*<<< orphan*/ * err ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  formfeed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 char* header ; 
 int /*<<< orphan*/  inchar ; 
 void* ingap ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int lines ; 
 scalar_t__ merge ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nmchar ; 
 int nmwd ; 
 int /*<<< orphan*/  nodiag ; 
 int /*<<< orphan*/  nohead ; 
 int /*<<< orphan*/  ochar ; 
 int offst ; 
 void* ogap ; 
 int /*<<< orphan*/  pauseall ; 
 int /*<<< orphan*/  pausefst ; 
 int pgnm ; 
 int pgwd ; 
 int /*<<< orphan*/  schar ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timefrmt ; 
 int /*<<< orphan*/ * FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{
	int c;
	int d_first;
	int eflag = 0;
	int iflag = 0;
	int wflag = 0;
	int cflag = 0;
	char *Lflag = NULL;

	if (FUNC5(FUNC2(stdout))) {
		/*
		 * defer diagnostics until processing is done
		 */
		if ((err = FUNC10()) == NULL) {
		       err = stderr;
		       (void)FUNC4("Cannot defer diagnostic messages\n",stderr);
		       return(1);
		}
	} else
		err = stderr;
	while ((c = FUNC1(argc, argv, "#adFfmrte?h:i?L:l:n?o:ps?w:")) != -1) {
		switch (c) {
		case '+':
			if ((pgnm = FUNC0(eoptarg)) < 1) {
			    (void)FUNC4("pr: +page number must be 1 or more\n",
				err);
			    return(1);
			}
			break;
		case '-':
			if ((clcnt = FUNC0(eoptarg)) < 1) {
			    (void)FUNC4("pr: -columns must be 1 or more\n",err);
			    return(1);
			}
			if (clcnt > 1)
				++cflag;
			break;
		case 'a':
			++across;
			break;
		case 'd':
			++dspace;
			break;
		case 'e':
			++eflag;
			if ((eoptarg != NULL) && !FUNC6((unsigned char)*eoptarg))
				inchar = *eoptarg++;
			else
				inchar = INCHAR;
			if ((eoptarg != NULL) && FUNC6((unsigned char)*eoptarg)) {
				if ((ingap = FUNC0(eoptarg)) < 0) {
					(void)FUNC4(
					"pr: -e gap must be 0 or more\n", err);
					return(1);
				}
				if (ingap == 0)
					ingap = INGAP;
			} else if ((eoptarg != NULL) && (*eoptarg != '\0')) {
				(void)FUNC3(err,
				      "pr: invalid value for -e %s\n", eoptarg);
				return(1);
			} else
				ingap = INGAP;
			break;
		case 'f':
			++pausefst;
			/*FALLTHROUGH*/
		case 'F':
			++formfeed;
			break;
		case 'h':
			header = eoptarg;
			break;
		case 'i':
			++iflag;
			if ((eoptarg != NULL) && !FUNC6((unsigned char)*eoptarg))
				ochar = *eoptarg++;
			else
				ochar = OCHAR;
			if ((eoptarg != NULL) && FUNC6((unsigned char)*eoptarg)) {
				if ((ogap = FUNC0(eoptarg)) < 0) {
					(void)FUNC4(
					"pr: -i gap must be 0 or more\n", err);
					return(1);
				}
				if (ogap == 0)
					ogap = OGAP;
			} else if ((eoptarg != NULL) && (*eoptarg != '\0')) {
				(void)FUNC3(err,
				      "pr: invalid value for -i %s\n", eoptarg);
				return(1);
			} else
				ogap = OGAP;
			break;
		case 'L':
			Lflag = eoptarg;
			break;
		case 'l':
			if (!FUNC6((unsigned char)*eoptarg) || ((lines=FUNC0(eoptarg)) < 1)) {
				(void)FUNC4(
				 "pr: number of lines must be 1 or more\n",err);
				return(1);
			}
			break;
		case 'm':
			++merge;
			break;
		case 'n':
			if ((eoptarg != NULL) && !FUNC6((unsigned char)*eoptarg))
				nmchar = *eoptarg++;
			else
				nmchar = NMCHAR;
			if ((eoptarg != NULL) && FUNC6((unsigned char)*eoptarg)) {
				if ((nmwd = FUNC0(eoptarg)) < 1) {
					(void)FUNC4(
					"pr: -n width must be 1 or more\n",err);
					return(1);
				}
			} else if ((eoptarg != NULL) && (*eoptarg != '\0')) {
				(void)FUNC3(err,
				      "pr: invalid value for -n %s\n", eoptarg);
				return(1);
			} else
				nmwd = NMWD;
			break;
		case 'o':
			if (!FUNC6((unsigned char)*eoptarg) || ((offst = FUNC0(eoptarg))< 1)){
				(void)FUNC4("pr: -o offset must be 1 or more\n",
					err);
				return(1);
			}
			break;
		case 'p':
			++pauseall;
			break;
		case 'r':
			++nodiag;
			break;
		case 's':
			++sflag;
			if (eoptarg == NULL)
				schar = SCHAR;
			else {
				schar = *eoptarg++;
				if (*eoptarg != '\0') {
					(void)FUNC3(err,
					    "pr: invalid value for -s %s\n",
					    eoptarg);
					return(1);
				}
			}
			break;
		case 't':
			++nohead;
			break;
		case 'w':
			++wflag;
			if ((eoptarg == NULL ) ||
			    !FUNC6((unsigned char)*eoptarg) ||
			    ((pgwd = FUNC0(eoptarg)) < 1)){
				(void)FUNC4(
				   "pr: -w width must be 1 or more \n",err);
				return(1);
			}
			break;
		case '?':
		default:
			return(1);
		}
	}

	/*
	 * default and sanity checks
	 */
	if (!clcnt) {
		if (merge) {
			if ((clcnt = argc - eoptind) <= 1) {
				clcnt = CLCNT;
				merge = 0;
			}
		} else
			clcnt = CLCNT;
	}
	if (across) {
		if (clcnt == 1) {
			(void)FUNC4("pr: -a flag requires multiple columns\n",
				err);
			return(1);
		}
		if (merge) {
			(void)FUNC4("pr: -m cannot be used with -a\n", err);
			return(1);
		}
	}
	if (!wflag) {
		if (sflag)
			pgwd = SPGWD;
		else
			pgwd = PGWD;
	}
	if (cflag || merge) {
		if (!eflag) {
			inchar = INCHAR;
			ingap = INGAP;
		}
		if (!iflag) {
			ochar = OCHAR;
			ogap = OGAP;
		}
	}
	if (cflag) {
		if (merge) {
			(void)FUNC4(
			  "pr: -m cannot be used with multiple columns\n", err);
			return(1);
		}
		if (nmwd) {
			colwd = (pgwd + 1 - (clcnt * (nmwd + 2)))/clcnt;
			pgwd = ((colwd + nmwd + 2) * clcnt) - 1;
		} else {
			colwd = (pgwd + 1 - clcnt)/clcnt;
			pgwd = ((colwd + 1) * clcnt) - 1;
		}
		if (colwd < 1) {
			(void)FUNC3(err,
			  "pr: page width is too small for %d columns\n",clcnt);
			return(1);
		}
	}
	if (!lines)
		lines = LINES;

	/*
	 * make sure long enough for headers. if not disable
	 */
	if (lines <= HEADLEN + TAILLEN)
		++nohead;
	else if (!nohead)
		lines -= HEADLEN + TAILLEN;

	/*
	 * adjust for double space on odd length pages
	 */
	if (dspace) {
		if (lines == 1)
			dspace = 0;
		else {
			if (lines & 1)
				++addone;
			lines /= 2;
		}
	}

	(void) FUNC8(LC_TIME, (Lflag != NULL) ? Lflag : "");

	d_first = (*FUNC7(D_MD_ORDER) == 'd');
	timefrmt = FUNC9(d_first ? TIMEFMTD : TIMEFMTM);

	return(0);
}