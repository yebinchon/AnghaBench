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
typedef  void* uid_t ;
typedef  scalar_t__ u_long ;
typedef  int u_int ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  void* id_t ;
typedef  void* gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIGEST_MD5 ; 
 int /*<<< orphan*/  DIGEST_NONE ; 
 int /*<<< orphan*/  DIGEST_RIPEMD160 ; 
 int /*<<< orphan*/  DIGEST_SHA1 ; 
 int /*<<< orphan*/  DIGEST_SHA256 ; 
 int /*<<< orphan*/  DIGEST_SHA512 ; 
 int DIRECTORY ; 
 int /*<<< orphan*/  EFTYPE ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int LN_ABSOLUTE ; 
 int LN_HARD ; 
 int LN_MIXED ; 
 int LN_RELATIVE ; 
 int LN_SYMBOLIC ; 
 int SETFLAGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char const* destdir ; 
 char* digest ; 
 int /*<<< orphan*/  digesttype ; 
 int dobackup ; 
 int docompare ; 
 int dodir ; 
 int dolink ; 
 int dopreserve ; 
 int dostrip ; 
 int dounpriv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char const* fflags ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char**,char*) ; 
 void* gid ; 
 int FUNC11 (char const*,void**) ; 
 char const* group ; 
 int haveopt_f ; 
 int haveopt_g ; 
 int haveopt_m ; 
 int haveopt_o ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,struct stat*) ; 
 char const* metafile ; 
 int /*<<< orphan*/ * metafp ; 
 int /*<<< orphan*/  mode ; 
 char const* optarg ; 
 scalar_t__ optind ; 
 char const* owner ; 
 int /*<<< orphan*/  FUNC15 (char const*,void**) ; 
 int safecopy ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int FUNC18 (char const*,struct stat*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char const**,scalar_t__*,int /*<<< orphan*/ *) ; 
 char const* suffix ; 
 char const* tags ; 
 void* uid ; 
 int FUNC21 (char const*,void**) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 

int
FUNC25(int argc, char *argv[])
{
	struct stat from_sb, to_sb;
	mode_t *set;
	u_long fset;
	int ch, no_target;
	u_int iflags;
	char *p;
	const char *to_name;

	fset = 0;
	iflags = 0;
	group = owner = NULL;
	while ((ch = FUNC10(argc, argv, "B:bCcD:df:g:h:l:M:m:N:o:pSsT:Uv")) !=
	     -1)
		switch((char)ch) {
		case 'B':
			suffix = optarg;
			/* FALLTHROUGH */
		case 'b':
			dobackup = 1;
			break;
		case 'C':
			docompare = 1;
			break;
		case 'c':
			/* For backwards compatibility. */
			break;
		case 'D':
			destdir = optarg;
			break;
		case 'd':
			dodir = 1;
			break;
		case 'f':
			haveopt_f = 1;
			fflags = optarg;
			break;
		case 'g':
			haveopt_g = 1;
			group = optarg;
			break;
		case 'h':
			digest = optarg;
			break;
		case 'l':
			for (p = optarg; *p != '\0'; p++)
				switch (*p) {
				case 's':
					dolink &= ~(LN_HARD|LN_MIXED);
					dolink |= LN_SYMBOLIC;
					break;
				case 'h':
					dolink &= ~(LN_SYMBOLIC|LN_MIXED);
					dolink |= LN_HARD;
					break;
				case 'm':
					dolink &= ~(LN_SYMBOLIC|LN_HARD);
					dolink |= LN_MIXED;
					break;
				case 'a':
					dolink &= ~LN_RELATIVE;
					dolink |= LN_ABSOLUTE;
					break;
				case 'r':
					dolink &= ~LN_ABSOLUTE;
					dolink |= LN_RELATIVE;
					break;
				default:
					FUNC4(1, "%c: invalid link type", *p);
					/* NOTREACHED */
				}
			break;
		case 'M':
			metafile = optarg;
			break;
		case 'm':
			haveopt_m = 1;
			if (!(set = FUNC16(optarg)))
				FUNC4(EX_USAGE, "invalid file mode: %s",
				     optarg);
			mode = FUNC9(set, 0);
			FUNC7(set);
			break;
		case 'N':
			if (!FUNC17(optarg))
				FUNC3(EX_OSERR, "Unable to use user and group "
				    "databases in `%s'", optarg);
			break;
		case 'o':
			haveopt_o = 1;
			owner = optarg;
			break;
		case 'p':
			docompare = dopreserve = 1;
			break;
		case 'S':
			safecopy = 1;
			break;
		case 's':
			dostrip = 1;
			break;
		case 'T':
			tags = optarg;
			break;
		case 'U':
			dounpriv = 1;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
		default:
			FUNC22();
		}
	argc -= optind;
	argv += optind;

	/* some options make no sense when creating directories */
	if (dostrip && dodir) {
		FUNC24("-d and -s may not be specified together");
		FUNC22();
	}

	if (FUNC8("DONTSTRIP") != NULL) {
		FUNC24("DONTSTRIP set - will not strip installed binaries");
		dostrip = 0;
	}

	/* must have at least two arguments, except when creating directories */
	if (argc == 0 || (argc == 1 && !dodir))
		FUNC22();

	if (digest != NULL) {
		if (FUNC19(digest, "none") == 0) {
			digesttype = DIGEST_NONE;
		} else if (FUNC19(digest, "md5") == 0) {
		       digesttype = DIGEST_MD5;
		} else if (FUNC19(digest, "rmd160") == 0) {
			digesttype = DIGEST_RIPEMD160;
		} else if (FUNC19(digest, "sha1") == 0) {
			digesttype = DIGEST_SHA1;
		} else if (FUNC19(digest, "sha256") == 0) {
			digesttype = DIGEST_SHA256;
		} else if (FUNC19(digest, "sha512") == 0) {
			digesttype = DIGEST_SHA512;
		} else {
			FUNC24("unknown digest `%s'", digest);
			FUNC22();
		}
	}

	/* need to make a temp copy so we can compare stripped version */
	if (docompare && dostrip)
		safecopy = 1;

	/* get group and owner id's */
	if (group != NULL && !dounpriv) {
		if (FUNC11(group, &gid) == -1) {
			id_t id;
			if (!FUNC15(group, &id))
				FUNC4(1, "unknown group %s", group);
			gid = id;
		}
	} else
		gid = (gid_t)-1;

	if (owner != NULL && !dounpriv) {
		if (FUNC21(owner, &uid) == -1) {
			id_t id;
			if (!FUNC15(owner, &id))
				FUNC4(1, "unknown user %s", owner);
			uid = id;
		}
	} else
		uid = (uid_t)-1;

	if (fflags != NULL && !dounpriv) {
		if (FUNC20(&fflags, &fset, NULL))
			FUNC4(EX_USAGE, "%s: invalid flag", fflags);
		iflags |= SETFLAGS;
	}

	if (metafile != NULL) {
		if ((metafp = FUNC6(metafile, "a")) == NULL)
			FUNC23("open %s", metafile);
	} else
		digesttype = DIGEST_NONE;

	if (dodir) {
		for (; *argv != NULL; ++argv)
			FUNC13(*argv);
		FUNC5(EX_OK);
		/* NOTREACHED */
	}

	to_name = argv[argc - 1];
	no_target = FUNC18(to_name, &to_sb);
	if (!no_target && FUNC0(to_sb.st_mode)) {
		if (dolink & LN_SYMBOLIC) {
			if (FUNC14(to_name, &to_sb) != 0)
				FUNC3(EX_OSERR, "%s vanished", to_name);
			if (FUNC1(to_sb.st_mode)) {
				if (argc != 2) {
					errno = ENOTDIR;
					FUNC3(EX_USAGE, "%s", to_name);
				}
				FUNC12(*argv, to_name, fset, iflags);
				FUNC5(EX_OK);
			}
		}
		for (; *argv != to_name; ++argv)
			FUNC12(*argv, to_name, fset, iflags | DIRECTORY);
		FUNC5(EX_OK);
		/* NOTREACHED */
	}

	/* can't do file1 file2 directory/file */
	if (argc != 2) {
		if (no_target)
			FUNC24("target directory `%s' does not exist", 
			    argv[argc - 1]);
		else
			FUNC24("target `%s' is not a directory",
			    argv[argc - 1]);
		FUNC22();
	}

	if (!no_target && !dolink) {
		if (FUNC18(*argv, &from_sb))
			FUNC3(EX_OSERR, "%s", *argv);
		if (!FUNC2(to_sb.st_mode)) {
			errno = EFTYPE;
			FUNC3(EX_OSERR, "%s", to_name);
		}
		if (to_sb.st_dev == from_sb.st_dev &&
		    to_sb.st_ino == from_sb.st_ino)
			FUNC4(EX_USAGE, 
			    "%s and %s are the same file", *argv, to_name);
	}
	FUNC12(*argv, to_name, fset, iflags);
	FUNC5(EX_OK);
	/* NOTREACHED */
}