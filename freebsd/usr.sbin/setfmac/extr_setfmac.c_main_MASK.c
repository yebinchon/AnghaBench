#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct label_specs {int dummy; } ;
struct TYPE_5__ {int fts_info; char* fts_path; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
#define  FTS_D 138 
#define  FTS_DC 137 
#define  FTS_DEFAULT 136 
#define  FTS_DNR 135 
#define  FTS_DP 134 
#define  FTS_ERR 133 
#define  FTS_F 132 
 int FTS_LOGICAL ; 
#define  FTS_NS 131 
 int FTS_PHYSICAL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
#define  FTS_SL 130 
#define  FTS_SLNONE 129 
#define  FTS_W 128 
 int FTS_XDEV ; 
 int /*<<< orphan*/  FUNC0 (struct label_specs*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct label_specs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct label_specs*,TYPE_1__*,int,int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char**,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char**,char*) ; 
 struct label_specs* FUNC12 () ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int qflag ; 
 scalar_t__ FUNC13 (struct label_specs*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

int
FUNC17(int argc, char **argv)
{
	FTSENT *ftsent;
	FTS *fts;
	struct label_specs *specs;
	int eflag = 0, xflag = 0, vflag = 0, Rflag = 0, hflag;
	int ch, is_setfmac;
	char *bn;

	bn = FUNC3(argv[0]);
	if (bn == NULL)
		FUNC4(1, "basename");
	is_setfmac = FUNC14(bn, "setfmac") == 0;
	hflag = is_setfmac ? FTS_LOGICAL : FTS_PHYSICAL;
	specs = FUNC12();
	while ((ch = FUNC11(argc, argv, is_setfmac ? "Rhq" : "ef:qs:vx")) !=
	    -1) {
		switch (ch) {
		case 'R':
			Rflag = 1;
			break;
		case 'e':
			eflag = 1;
			break;
		case 'f':
			FUNC1(specs, optarg, 0);
			break;
		case 'h':
			hflag = FTS_PHYSICAL;
			break;
		case 'q':
			qflag = 1;
			break;
		case 's':
			FUNC1(specs, optarg, 1);
			break;
		case 'v':
			vflag++;
			break;
		case 'x':
			xflag = FTS_XDEV;
			break;
		default:
			FUNC15(is_setfmac);
		}
	}
	argc -= optind;
	argv += optind;

	if (is_setfmac) {
		if (argc <= 1)	
			FUNC15(is_setfmac);
		FUNC0(specs, *argv);
		argc--;
		argv++;
	} else {
		if (argc == 0 || FUNC13(specs))
			FUNC15(is_setfmac);
	}
	fts = FUNC8(argv, hflag | xflag, NULL);
	if (fts == NULL)
		FUNC4(1, "cannot traverse filesystem%s", argc ? "s" : "");
	while ((ftsent = FUNC9(fts)) != NULL) {
		switch (ftsent->fts_info) {
		case FTS_DP:		/* skip post-order */
			break;
		case FTS_D:		/* do pre-order */
		case FTS_DC:		/* do cyclic? */
			/* don't ever recurse directories as setfmac(8) */
			if (is_setfmac && !Rflag)
				FUNC10(fts, ftsent, FTS_SKIP);
		case FTS_DEFAULT:	/* do default */
		case FTS_F:		/* do regular */
		case FTS_SL:		/* do symlink */
		case FTS_SLNONE:	/* do symlink */
		case FTS_W:		/* do whiteout */
			if (FUNC2(specs, ftsent, hflag, vflag)) {
				if (eflag) {
					FUNC5(1, "labeling not supported in %s",
					    ftsent->fts_path);
				}
				if (!qflag)
					FUNC16("labeling not supported in %s",
					    ftsent->fts_path);
				FUNC10(fts, ftsent, FTS_SKIP);
			}
			break;
		case FTS_DNR:		/* die on all errors */
		case FTS_ERR:
		case FTS_NS:
			FUNC4(1, "traversing %s", ftsent->fts_path);
		default:
			FUNC5(1, "CANNOT HAPPEN (%d) traversing %s",
			    ftsent->fts_info, ftsent->fts_path);
		}
	}
	FUNC7(fts);
	FUNC6(0);
}