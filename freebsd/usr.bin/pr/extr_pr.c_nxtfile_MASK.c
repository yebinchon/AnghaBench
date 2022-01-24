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
typedef  int time_t ;
struct tm {int dummy; } ;
struct stat {int st_mtime; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  HDBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int eoptind ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  errcnt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* fnamedefault ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 char* header ; 
 struct tm* FUNC7 (int*) ; 
 scalar_t__ nodiag ; 
 scalar_t__ nohead ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timefrmt ; 

FILE *
FUNC12(int argc, char **argv, const char **fname, char *buf, int dt)
{
	FILE *inf = NULL;
	time_t tv_sec;
	struct tm *timeptr = NULL;
	struct stat statbuf;
	static int twice = -1;

	++twice;
	if (eoptind >= argc) {
		/*
		 * no file listed; default, use standard input
		 */
		if (twice)
			return(NULL);
		FUNC0(stdin);
		inf = stdin;
		if (header != NULL)
			*fname = header;
		else
			*fname = fnamedefault;
		if (nohead)
			return(inf);
		if ((tv_sec = FUNC11(NULL)) == -1) {
			++errcnt;
			(void)FUNC4(err, "pr: cannot get time of day, %s\n",
				FUNC9(errno));
			eoptind = argc - 1;
			return(NULL);
		}
		timeptr = FUNC7(&tv_sec);
	}
	for (; eoptind < argc; ++eoptind) {
		if (FUNC8(argv[eoptind], "-") == 0) {
			/*
			 * process a "-" for filename
			 */
			FUNC0(stdin);
			inf = stdin;
			if (header != NULL)
				*fname = header;
			else
				*fname = fnamedefault;
			++eoptind;
			if (nohead || (dt && twice))
				return(inf);
			if ((tv_sec = FUNC11(NULL)) == -1) {
				++errcnt;
				(void)FUNC4(err,
					"pr: cannot get time of day, %s\n",
					FUNC9(errno));
				return(NULL);
			}
			timeptr = FUNC7(&tv_sec);
		} else {
			/*
			 * normal file processing
			 */
			if ((inf = FUNC3(argv[eoptind], "r")) == NULL) {
				++errcnt;
				if (nodiag)
					continue;
				(void)FUNC4(err, "pr: cannot open %s, %s\n",
					argv[eoptind], FUNC9(errno));
				continue;
			}
			if (header != NULL)
				*fname = header;
			else if (dt)
				*fname = fnamedefault;
			else
				*fname = argv[eoptind];
			++eoptind;
			if (nohead || (dt && twice))
				return(inf);

			if (dt) {
				if ((tv_sec = FUNC11(NULL)) == -1) {
					++errcnt;
					(void)FUNC4(err,
					     "pr: cannot get time of day, %s\n",
					     FUNC9(errno));
					FUNC1(inf);
					return(NULL);
				}
				timeptr = FUNC7(&tv_sec);
			} else {
				if (FUNC6(FUNC2(inf), &statbuf) < 0) {
					++errcnt;
					(void)FUNC1(inf);
					(void)FUNC4(err,
						"pr: cannot stat %s, %s\n",
						argv[eoptind], FUNC9(errno));
					return(NULL);
				}
				timeptr = FUNC7(&(statbuf.st_mtime));
			}
		}
		break;
	}
	if (inf == NULL)
		return(NULL);

	/*
	 * set up time field used in header
	 */
	if (FUNC10(buf, HDBUF, timefrmt, timeptr) <= 0) {
		++errcnt;
		if (inf != stdin)
			(void)FUNC1(inf);
		(void)FUNC5("pr: time conversion failed\n", err);
		return(NULL);
	}
	return(inf);
}