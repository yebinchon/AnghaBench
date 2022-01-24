#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct stat {int st_mode; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* make_fs ) (char*,char const*,int /*<<< orphan*/ *,TYPE_2__*) ;int /*<<< orphan*/  (* prepare_options ) (TYPE_2__*) ;int /*<<< orphan*/  (* cleanup_options ) (TYPE_2__*) ;int /*<<< orphan*/  (* parse_options ) (char*,TYPE_2__*) ;} ;
typedef  TYPE_1__ fstype_t ;
typedef  int /*<<< orphan*/  fsoptions ;
typedef  int /*<<< orphan*/  fsnode ;
struct TYPE_16__ {int fd; int sectorsize; int needswap; int sparse; int onlyspec; int /*<<< orphan*/ * fs_specific; void* maxsize; void* minsize; void* roundup; void* offset; void* freefiles; void* freefilepc; void* freeblocks; void* freeblockpc; } ;
typedef  TYPE_2__ fsinfo_t ;
struct TYPE_14__ {int tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int DEBUG_DUMP_FSNODES ; 
 char* DEFAULT_FSTYPE ; 
 int INT_MAX ; 
 int LLONG_MAX ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int dupsok ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int,char**,char*) ; 
 int FUNC14 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char) ; 
 int /*<<< orphan*/ * FUNC18 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  stampst ; 
 TYPE_10__ start_time ; 
 int FUNC21 (char*,struct stat*) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 char* FUNC24 (char**,char*) ; 
 void* FUNC25 (char*,char*,long long,int) ; 
 int FUNC26 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (char*,char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC33 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (char*,char*) ; 

int
FUNC35(int argc, char *argv[])
{
	struct stat	 sb;
	struct timeval	 start;
	fstype_t	*fstype;
	fsinfo_t	 fsoptions;
	fsnode		*root;
	int	 	 ch, i, len;
	const char	*subtree;
	const char	*specfile;

	FUNC19(argv[0]);

	debug = 0;
	if ((fstype = FUNC11(DEFAULT_FSTYPE)) == NULL)
		FUNC8(1, "Unknown default fs type `%s'.", DEFAULT_FSTYPE);

		/* set default fsoptions */
	(void)FUNC15(&fsoptions, 0, sizeof(fsoptions));
	fsoptions.fd = -1;
	fsoptions.sectorsize = -1;

	if (fstype->prepare_options)
		fstype->prepare_options(&fsoptions);

	specfile = NULL;
#ifdef CLOCK_REALTIME
	ch = clock_gettime(CLOCK_REALTIME, &start_time);
#else
	ch = FUNC14(&start, NULL);
	start_time.tv_sec = start.tv_sec;
	start_time.tv_nsec = start.tv_usec * 1000;
#endif
	if (ch == -1)
		FUNC7(1, "Unable to get system time");


	while ((ch = FUNC13(argc, argv, "B:b:Dd:f:F:M:m:N:O:o:pR:s:S:t:T:xZ")) != -1) {
		switch (ch) {

		case 'B':
			if (FUNC22(optarg, "be") == 0 ||
			    FUNC22(optarg, "4321") == 0 ||
			    FUNC22(optarg, "big") == 0) {
#if BYTE_ORDER == LITTLE_ENDIAN
				fsoptions.needswap = 1;
#endif
			} else if (FUNC22(optarg, "le") == 0 ||
			    FUNC22(optarg, "1234") == 0 ||
			    FUNC22(optarg, "little") == 0) {
#if BYTE_ORDER == BIG_ENDIAN
				fsoptions.needswap = 1;
#endif
			} else {
				FUNC34("Invalid endian `%s'.", optarg);
				FUNC32(fstype, &fsoptions);
			}
			break;

		case 'b':
			len = FUNC23(optarg) - 1;
			if (optarg[len] == '%') {
				optarg[len] = '\0';
				fsoptions.freeblockpc =
				    FUNC25("free block percentage",
					optarg, 0, 99);
			} else {
				fsoptions.freeblocks =
				    FUNC25("free blocks",
					optarg, 0, LLONG_MAX);
			}
			break;

		case 'D':
			dupsok = 1;
			break;

		case 'd':
			debug = FUNC26(optarg, NULL, 0);
			break;

		case 'f':
			len = FUNC23(optarg) - 1;
			if (optarg[len] == '%') {
				optarg[len] = '\0';
				fsoptions.freefilepc =
				    FUNC25("free file percentage",
					optarg, 0, 99);
			} else {
				fsoptions.freefiles =
				    FUNC25("free files",
					optarg, 0, LLONG_MAX);
			}
			break;

		case 'F':
			specfile = optarg;
			break;

		case 'M':
			fsoptions.minsize =
			    FUNC25("minimum size", optarg, 1LL, LLONG_MAX);
			break;

		case 'N':
			if (! FUNC20(optarg))
				FUNC8(1,
			    "Unable to use user and group databases in `%s'",
				    optarg);
			break;

		case 'm':
			fsoptions.maxsize =
			    FUNC25("maximum size", optarg, 1LL, LLONG_MAX);
			break;

		case 'O':
			fsoptions.offset =
			    FUNC25("offset", optarg, 0LL, LLONG_MAX);
			break;

		case 'o':
		{
			char *p;

			while ((p = FUNC24(&optarg, ",")) != NULL) {
				if (*p == '\0')
					FUNC8(1, "Empty option");
				if (! fstype->parse_options(p, &fsoptions))
					FUNC32(fstype, &fsoptions);
			}
			break;
		}
		case 'p':
			/* Deprecated in favor of 'Z' */
			fsoptions.sparse = 1;
			break;

		case 'R':
			/* Round image size up to specified block size */
			fsoptions.roundup =
			    FUNC25("roundup-size", optarg, 0, LLONG_MAX);
			break;

		case 's':
			fsoptions.minsize = fsoptions.maxsize =
			    FUNC25("size", optarg, 1LL, LLONG_MAX);
			break;

		case 'S':
			fsoptions.sectorsize =
			    (int)FUNC25("sector size", optarg,
				1LL, INT_MAX);
			break;

		case 't':
			/* Check current one and cleanup if necessary. */
			if (fstype->cleanup_options)
				fstype->cleanup_options(&fsoptions);
			fsoptions.fs_specific = NULL;
			if ((fstype = FUNC11(optarg)) == NULL)
				FUNC8(1, "Unknown fs type `%s'.", optarg);
			fstype->prepare_options(&fsoptions);
			break;

		case 'T':
			if (FUNC12(optarg, &stampst) == -1)
				FUNC8(1, "Cannot get timestamp from `%s'",
				    optarg);
			break;

		case 'x':
			fsoptions.onlyspec = 1;
			break;

		case 'Z':
			/* Superscedes 'p' for compatibility with NetBSD makefs(8) */
			fsoptions.sparse = 1;
			break;

		case '?':
		default:
			FUNC32(fstype, &fsoptions);
			/* NOTREACHED */

		}
	}
	if (debug) {
		FUNC16("debug mask: 0x%08x\n", debug);
		FUNC16("start time: %ld.%ld, %s",
		    (long)start_time.tv_sec, (long)start_time.tv_nsec,
		    FUNC5(&start_time.tv_sec));
	}
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC32(fstype, &fsoptions);

	/* -x must be accompanied by -F */
	if (fsoptions.onlyspec != 0 && specfile == NULL)
		FUNC8(1, "-x requires -F mtree-specfile.");

	/* Accept '-' as meaning "read from standard input". */
	if (FUNC22(argv[1], "-") == 0)
		sb.st_mode = S_IFREG;
	else {
		if (FUNC21(argv[1], &sb) == -1)
			FUNC7(1, "Can't stat `%s'", argv[1]);
	}

	switch (sb.st_mode & S_IFMT) {
	case S_IFDIR:		/* walk the tree */
		subtree = argv[1];
		FUNC2(start);
		root = FUNC33(subtree, ".", NULL, NULL);
		FUNC1(start, "walk_dir");
		break;
	case S_IFREG:		/* read the manifest file */
		subtree = ".";
		FUNC2(start);
		root = FUNC18(argv[1], NULL);
		FUNC1(start, "manifest");
		break;
	default:
		FUNC8(1, "%s: not a file or directory", argv[1]);
		/* NOTREACHED */
	}

	/* append extra directory */
	for (i = 2; i < argc; i++) {
		if (FUNC21(argv[i], &sb) == -1)
			FUNC7(1, "Can't stat `%s'", argv[i]);
		if (!FUNC0(sb.st_mode))
			FUNC8(1, "%s: not a directory", argv[i]);
		FUNC2(start);
		root = FUNC33(argv[i], ".", NULL, root);
		FUNC1(start, "walk_dir2");
	}

	if (specfile) {		/* apply a specfile */
		FUNC2(start);
		FUNC3(specfile, subtree, root, fsoptions.onlyspec);
		FUNC1(start, "apply_specfile");
	}

	if (debug & DEBUG_DUMP_FSNODES) {
		FUNC16("\nparent: %s\n", subtree);
		FUNC6(root);
		FUNC17('\n');
	}

				/* build the file system */
	FUNC2(start);
	fstype->make_fs(argv[0], subtree, root, &fsoptions);
	FUNC1(start, "make_fs");

	FUNC10(root);

	FUNC9(0);
	/* NOTREACHED */
}