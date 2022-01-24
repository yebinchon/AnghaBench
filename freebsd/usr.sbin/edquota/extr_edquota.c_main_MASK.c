#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ dqb_itime; scalar_t__ dqb_btime; void* dqb_ihardlimit; void* dqb_isoftlimit; void* dqb_bhardlimit; void* dqb_bsoftlimit; } ;
struct quotause {char* fsname; TYPE_1__ dqblk; struct quotause* next; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int GRPQUOTA ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int USRQUOTA ; 
 scalar_t__ FUNC0 (char*) ; 
 struct quotause* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct quotause*) ; 
 long FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int,char**,char*) ; 
 struct quotause* FUNC13 (long,int,char*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  hflag ; 
 int /*<<< orphan*/  FUNC15 (char) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC17 (long,struct quotause*) ; 
 scalar_t__ FUNC18 (struct quotause*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct quotause*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,char*) ; 
 char* FUNC21 (char*,char) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 scalar_t__ FUNC23 (char*) ; 
 char* FUNC24 (char**,char*) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char**,int) ; 
 int /*<<< orphan*/  tmpfil ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 scalar_t__ FUNC30 (struct quotause*,int,char*,int) ; 
 scalar_t__ FUNC31 (struct quotause*,int,int) ; 

int
FUNC32(int argc, char *argv[])
{
	struct quotause *qup, *protoprivs, *curprivs;
	long id, protoid;
	int i, quotatype, range, tmpfd;
	uid_t startuid, enduid;
	uint64_t lim;
	char *protoname, *cp, *endpt, *oldoptarg;
	int eflag = 0, tflag = 0, pflag = 0, ch;
	char *fspath = NULL;
	char buf[MAXLOGNAME];

	if (argc < 2)
		FUNC28();
	if (FUNC14())
		FUNC6(1, "permission denied");
	quotatype = USRQUOTA;
	protoprivs = NULL;
	curprivs = NULL;
	protoname = NULL;
	while ((ch = FUNC12(argc, argv, "ughtf:p:e:")) != -1) {
		switch(ch) {
		case 'f':
			fspath = optarg;
			break;
		case 'p':
			if (eflag) {
				FUNC29("cannot specify both -e and -p");
				FUNC28();
				/* not reached */
			}
			protoname = optarg;
			pflag++;
			break;
		case 'g':
			quotatype = GRPQUOTA;
			break;
		case 'h':
			hflag++;
			break;
		case 'u':
			quotatype = USRQUOTA;
			break;
		case 't':
			tflag++;
			break;
		case 'e':
			if (pflag) {
				FUNC29("cannot specify both -e and -p");
				FUNC28();
				/* not reached */
			}
			if ((qup = FUNC1(1, sizeof(*qup))) == NULL)
				FUNC6(2, "out of memory");
			oldoptarg = optarg;
			for (i = 0, cp = optarg;
			     (cp = FUNC24(&optarg, ":")) != NULL; i++) {
				if (cp != oldoptarg)
					*(cp - 1) = ':';
				if (i > 0 && !FUNC15(*cp)) {
					FUNC29("incorrect quota specification: "
					    "%s", oldoptarg);
					FUNC28();
					/* Not Reached */
				}
				switch (i) {
				case 0:
					FUNC22(qup->fsname, cp,
					    sizeof(qup->fsname));
					break;
				case 1:
					lim = FUNC26(cp, &endpt, 10);
					qup->dqblk.dqb_bsoftlimit =
						FUNC3(lim, *endpt,
						    "block soft limit");
					continue;
				case 2:
					lim = FUNC26(cp, &endpt, 10);
					qup->dqblk.dqb_bhardlimit =
						FUNC3(lim, *endpt,
						    "block hard limit");
					continue;
				case 3:
					lim = FUNC26(cp, &endpt, 10);
					qup->dqblk.dqb_isoftlimit =
						FUNC4(lim, *endpt,
						    "inode soft limit");
					continue;
				case 4:
					lim = FUNC26(cp, &endpt, 10);
					qup->dqblk.dqb_ihardlimit =
						FUNC4(lim, *endpt,
						    "inode hard limit");
					continue;
				default:
					FUNC29("incorrect quota specification: "
					    "%s", oldoptarg);
					FUNC28();
					/* Not Reached */
				}
			}
			if (protoprivs == NULL) {
				protoprivs = curprivs = qup;
			} else {
				curprivs->next = qup;
				curprivs = qup;
			}
			eflag++;
			break;
		default:
			FUNC28();
			/* Not Reached */
		}
	}
	argc -= optind;
	argv += optind;
	if (pflag || eflag) {
		if (pflag) {
			if ((protoid = FUNC10(protoname, quotatype)) == -1)
				FUNC7(1);
			protoprivs = FUNC13(protoid, quotatype, fspath);
			if (protoprivs == NULL)
				FUNC7(0);
			for (qup = protoprivs; qup; qup = qup->next) {
				qup->dqblk.dqb_btime = 0;
				qup->dqblk.dqb_itime = 0;
			}
		}
		for (; argc-- > 0; argv++) {
			if (FUNC25(*argv, "0123456789-") == FUNC23(*argv) &&
			    (cp = FUNC21(*argv, '-')) != NULL) {
				*cp++ = '\0';
				startuid = FUNC0(*argv);
				enduid = FUNC0(cp);
				if (enduid < startuid)
					FUNC6(1,
	"ending uid (%d) must be >= starting uid (%d) when using uid ranges",
						enduid, startuid);
				range = 1;
			} else {
				startuid = enduid = 0;
				range = 0;
			}
			for ( ; startuid <= enduid; startuid++) {
				if (range)
					FUNC20(buf, sizeof(buf), "%d",
					    startuid);
				else
					FUNC20(buf, sizeof(buf), "%s",
						*argv);
				if ((id = FUNC10(buf, quotatype)) < 0)
					continue;
				if (pflag) {
					FUNC17(id, protoprivs);
					continue;
				}
				for (qup = protoprivs; qup; qup = qup->next) {
					curprivs = FUNC13(id, quotatype,
					    qup->fsname);
					if (curprivs == NULL)
						continue;
					curprivs->dqblk = qup->dqblk;
					FUNC17(id, curprivs);
					FUNC9(curprivs);
				}
			}
		}
		if (pflag)
			FUNC9(protoprivs);
		FUNC7(0);
	}
	tmpfd = FUNC16(tmpfil, O_CLOEXEC);
	FUNC8(tmpfd, FUNC14(), FUNC11());
	if (tflag) {
		if ((protoprivs = FUNC13(0, quotatype, fspath)) != NULL) {
			if (FUNC31(protoprivs, tmpfd, quotatype) != 0 &&
			    FUNC5(tmpfil) && FUNC19(protoprivs, tmpfil))
				FUNC17(0L, protoprivs);
			FUNC9(protoprivs);
		}
		FUNC2(tmpfd);
		FUNC27(tmpfil);
		FUNC7(0);
	}
	for ( ; argc > 0; argc--, argv++) {
		if ((id = FUNC10(*argv, quotatype)) == -1)
			continue;
		if ((curprivs = FUNC13(id, quotatype, fspath)) == NULL)
			FUNC7(1);
		if (FUNC30(curprivs, tmpfd, *argv, quotatype) == 0)
			continue;
		if (FUNC5(tmpfil) && FUNC18(curprivs, tmpfil))
			FUNC17(id, curprivs);
		FUNC9(curprivs);
	}
	FUNC2(tmpfd);
	FUNC27(tmpfil);
	FUNC7(0);
}