#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
typedef  char* intmax_t ;
struct TYPE_10__ {int fts_info; int fts_bignum; int fts_level; char* fts_path; TYPE_2__* fts_parent; TYPE_1__* fts_statp; int /*<<< orphan*/  fts_errno; } ;
struct TYPE_9__ {int fts_bignum; } ;
struct TYPE_8__ {int st_size; int st_blocks; int st_nlink; } ;
typedef  TYPE_3__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int Aflag ; 
 int DEV_BSIZE ; 
 scalar_t__ ERANGE ; 
 int FTS_COMFOLLOW ; 
#define  FTS_D 134 
#define  FTS_DC 133 
#define  FTS_DNR 132 
#define  FTS_DP 131 
#define  FTS_ERR 130 
 int FTS_LOGICAL ; 
#define  FTS_NS 129 
 int FTS_PHYSICAL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 int FTS_XDEV ; 
 int INT_MAX ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  SIGINFO ; 
#define  SI_OPT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ UNITS_2 ; 
 scalar_t__ UNITS_SI ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int blocksize ; 
 int cblocksize ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC5 (char**,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int FUNC9 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ hflag ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  ignores ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  long_options ; 
 int nodumpflag ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  siginfo ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,...) ; 

int
FUNC22(int argc, char *argv[])
{
	FTS		*fts;
	FTSENT		*p;
	off_t		savednumber, curblocks;
	off_t		threshold, threshold_sign;
	int		ftsoptions;
	int		depth;
	int		Hflag, Lflag, aflag, sflag, dflag, cflag;
	int		lflag, ch, notused, rval;
	char 		**save;
	static char	dot[] = ".";

	FUNC17(LC_ALL, "");

	Hflag = Lflag = aflag = sflag = dflag = cflag = lflag = Aflag = 0;

	save = argv;
	ftsoptions = FTS_PHYSICAL;
	savednumber = 0;
	threshold = 0;
	threshold_sign = 1;
	cblocksize = DEV_BSIZE;
	blocksize = 0;
	depth = INT_MAX;
	FUNC0(&ignores);

	while ((ch = FUNC9(argc, argv, "+AB:HI:LPasd:cghklmnrt:x",
	    long_options, NULL)) != -1)
		switch (ch) {
		case 'A':
			Aflag = 1;
			break;
		case 'B':
			errno = 0;
			cblocksize = FUNC1(optarg);
			if (errno == ERANGE || cblocksize <= 0) {
				FUNC21("invalid argument to option B: %s",
				    optarg);
				FUNC20();
			}
			break;
		case 'H':
			Hflag = 1;
			Lflag = 0;
			break;
		case 'I':
			FUNC11(optarg);
			break;
		case 'L':
			Lflag = 1;
			Hflag = 0;
			break;
		case 'P':
			Hflag = Lflag = 0;
			break;
		case 'a':
			aflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 'd':
			dflag = 1;
			errno = 0;
			depth = FUNC1(optarg);
			if (errno == ERANGE || depth < 0) {
				FUNC21("invalid argument to option d: %s",
				    optarg);
				FUNC20();
			}
			break;
		case 'c':
			cflag = 1;
			break;
		case 'g':
			hflag = 0;
			blocksize = 1073741824;
			break;
		case 'h':
			hflag = UNITS_2;
			break;
		case 'k':
			hflag = 0;
			blocksize = 1024;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'm':
			hflag = 0;
			blocksize = 1048576;
			break;
		case 'n':
			nodumpflag = 1;
			break;
		case 'r':		 /* Compatibility. */
			break;
		case 't' :
			if (FUNC4(optarg, &threshold) != 0 ||
			    threshold == 0) {
				FUNC21("invalid threshold: %s", optarg);
				FUNC20();
			} else if (threshold < 0)
				threshold_sign = -1;
			break;
		case 'x':
			ftsoptions |= FTS_XDEV;
			break;
		case SI_OPT:
			hflag = UNITS_SI;
			break;
		case '?':
		default:
			FUNC20();
			/* NOTREACHED */
		}

	argc -= optind;
	argv += optind;

	/*
	 * XXX
	 * Because of the way that fts(3) works, logical walks will not count
	 * the blocks actually used by symbolic links.  We rationalize this by
	 * noting that users computing logical sizes are likely to do logical
	 * copies, so not counting the links is correct.  The real reason is
	 * that we'd have to re-implement the kernel's symbolic link traversing
	 * algorithm to get this right.  If, for example, you have relative
	 * symbolic links referencing other relative symbolic links, it gets
	 * very nasty, very fast.  The bottom line is that it's documented in
	 * the man page, so it's a feature.
	 */

	if (Hflag)
		ftsoptions |= FTS_COMFOLLOW;
	if (Lflag) {
		ftsoptions &= ~FTS_PHYSICAL;
		ftsoptions |= FTS_LOGICAL;
	}

	if (!Aflag && (cblocksize % DEV_BSIZE) != 0)
		cblocksize = FUNC10(cblocksize, DEV_BSIZE) * DEV_BSIZE;

	if (aflag + dflag + sflag > 1)
		FUNC20();
	if (sflag)
		depth = 0;

	if (!*argv) {
		argv = save;
		argv[0] = dot;
		argv[1] = NULL;
	}

	if (blocksize == 0)
		(void)FUNC8(&notused, &blocksize);

	if (!Aflag) {
		cblocksize /= DEV_BSIZE;
		blocksize /= DEV_BSIZE;
	}

	if (threshold != 0)
		threshold = FUNC10(threshold / DEV_BSIZE * cblocksize,
		    blocksize);

	rval = 0;

	(void)FUNC18(SIGINFO, siginfo);

	if ((fts = FUNC5(argv, ftsoptions, NULL)) == NULL)
		FUNC2(1, "fts_open");

	while ((p = FUNC6(fts)) != NULL) {
		switch (p->fts_info) {
		case FTS_D:			/* Ignore. */
			if (FUNC13(p))
				FUNC7(fts, p, FTS_SKIP);
			break;
		case FTS_DP:
			if (FUNC13(p))
				break;

			curblocks = Aflag ?
			    FUNC10(p->fts_statp->st_size, cblocksize) :
			    FUNC10(p->fts_statp->st_blocks, cblocksize);
			p->fts_parent->fts_bignum += p->fts_bignum +=
			    curblocks;

			if (p->fts_level <= depth && threshold <=
			    threshold_sign * FUNC10(p->fts_bignum *
			    cblocksize, blocksize)) {
				if (hflag > 0) {
					FUNC16(p->fts_bignum);
					(void)FUNC15("\t%s\n", p->fts_path);
				} else {
					(void)FUNC15("%jd\t%s\n",
					    (intmax_t)FUNC10(p->fts_bignum *
					    cblocksize, blocksize),
					    p->fts_path);
				}
			}
			if (info) {
				info = 0;
				(void)FUNC15("\t%s\n", p->fts_path);
			}
			break;
		case FTS_DC:			/* Ignore. */
			break;
		case FTS_DNR:			/* Warn, continue. */
		case FTS_ERR:
		case FTS_NS:
			FUNC21("%s: %s", p->fts_path, FUNC19(p->fts_errno));
			rval = 1;
			break;
		default:
			if (FUNC13(p))
				break;

			if (lflag == 0 && p->fts_statp->st_nlink > 1 &&
			    FUNC14(p))
				break;

			curblocks = Aflag ?
			    FUNC10(p->fts_statp->st_size, cblocksize) :
			    FUNC10(p->fts_statp->st_blocks, cblocksize);

			if (aflag || p->fts_level == 0) {
				if (hflag > 0) {
					FUNC16(curblocks);
					(void)FUNC15("\t%s\n", p->fts_path);
				} else {
					(void)FUNC15("%jd\t%s\n",
					    (intmax_t)FUNC10(curblocks *
					    cblocksize, blocksize),
					    p->fts_path);
				}
			}

			p->fts_parent->fts_bignum += curblocks;
		}
		savednumber = p->fts_parent->fts_bignum;
	}

	if (errno)
		FUNC2(1, "fts_read");

	if (cflag) {
		if (hflag > 0) {
			FUNC16(savednumber);
			(void)FUNC15("\ttotal\n");
		} else {
			(void)FUNC15("%jd\ttotal\n", (intmax_t)FUNC10(
			    savednumber * cblocksize, blocksize));
		}
	}

	FUNC12();
	FUNC3(rval);
}