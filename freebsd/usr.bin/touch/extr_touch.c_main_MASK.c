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
struct timespec {scalar_t__ tv_sec; void* tv_nsec; } ;
struct stat {struct timespec st_mtim; struct timespec st_atim; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  DEFFILEMODE ; 
 scalar_t__ ENOENT ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 void* UTIME_NOW ; 
 void* UTIME_OMIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,struct stat*,int) ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char**,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int
FUNC16(int argc, char *argv[])
{
	struct stat sb;
	struct timespec ts[2];
	int atflag;
	int Aflag, aflag, cflag, mflag, ch, fd, len, rval, timeset;
	char *p;
	char *myname;

	myname = FUNC0(argv[0]);
	Aflag = aflag = cflag = mflag = timeset = 0;
	atflag = 0;
	ts[0].tv_sec = ts[1].tv_sec = 0;
	ts[0].tv_nsec = ts[1].tv_nsec = UTIME_NOW;

	while ((ch = FUNC5(argc, argv, "A:acd:fhmr:t:")) != -1)
		switch(ch) {
		case 'A':
			Aflag = FUNC12(optarg);
			break;
		case 'a':
			aflag = 1;
			break;
		case 'c':
			cflag = 1;
			break;
		case 'd':
			timeset = 1;
			FUNC9(optarg, ts);
			break;
		case 'f':
			/* No-op for compatibility. */
			break;
		case 'h':
			cflag = 1;
			atflag = AT_SYMLINK_NOFOLLOW;
			break;
		case 'm':
			mflag = 1;
			break;
		case 'r':
			timeset = 1;
			FUNC10(optarg, ts);
			break;
		case 't':
			timeset = 1;
			FUNC7(optarg, ts);
			break;
		default:
			FUNC13(myname);
		}
	argc -= optind;
	argv += optind;

	if (aflag == 0 && mflag == 0)
		aflag = mflag = 1;

	if (timeset) {
		if (Aflag) {
			/*
			 * We're setting the time to an offset from a specified
			 * time.  God knows why, but it means that we can set
			 * that time once and for all here.
			 */
			if (aflag)
				ts[0].tv_sec += Aflag;
			if (mflag)
				ts[1].tv_sec += Aflag;
			Aflag = 0;		/* done our job */
		}
	} else {
		/*
		 * If no -r or -t flag, at least two operands, the first of
		 * which is an 8 or 10 digit number, use the obsolete time
		 * specification, otherwise use the current time.
		 */
		if (argc > 1) {
			FUNC11(argv[0], &p, 10);
			len = p - argv[0];
			if (*p == '\0' && (len == 8 || len == 10)) {
				timeset = 1;
				FUNC8(*argv++, len == 10, ts);
			}
		}
		/* Both times default to the same. */
		ts[1] = ts[0];
	}

	if (!aflag)
		ts[0].tv_nsec = UTIME_OMIT;
	if (!mflag)
		ts[1].tv_nsec = UTIME_OMIT;

	if (*argv == NULL)
		FUNC13(myname);

	if (Aflag)
		cflag = 1;

	for (rval = 0; *argv; ++argv) {
		/* See if the file exists. */
		if (FUNC4(AT_FDCWD, *argv, &sb, atflag) != 0) {
			if (errno != ENOENT) {
				rval = 1;
				FUNC15("%s", *argv);
				continue;
			}
			if (!cflag) {
				/* Create the file. */
				fd = FUNC6(*argv,
				    O_WRONLY | O_CREAT, DEFFILEMODE);
				if (fd == -1 || FUNC3(fd, &sb) || FUNC1(fd)) {
					rval = 1;
					FUNC15("%s", *argv);
					continue;
				}

				/* If using the current time, we're done. */
				if (!timeset)
					continue;
			} else
				continue;
		}

		/*
		 * We're adjusting the times based on the file times, not a
		 * specified time (that gets handled above).
		 */
		if (Aflag) {
			if (aflag) {
				ts[0] = sb.st_atim;
				ts[0].tv_sec += Aflag;
			}
			if (mflag) {
				ts[1] = sb.st_mtim;
				ts[1].tv_sec += Aflag;
			}
		}

		if (!FUNC14(AT_FDCWD, *argv, ts, atflag))
			continue;

		rval = 1;
		FUNC15("%s", *argv);
	}
	FUNC2(rval);
}