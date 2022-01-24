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
 int EDOOFUS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RTLD_TRACE ; 
#define  TYPE_AOUT 131 
#define  TYPE_ELF 130 
#define  TYPE_ELF32 129 
#define  TYPE_UNKNOWN 128 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 scalar_t__ error_count ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int FUNC13 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC18 (int,char**,char*) ; 
 int FUNC19 (char*,int,int*,int*) ; 
 int FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC26(int argc, char *argv[])
{
	char *fmt1, *fmt2;
	int rval, c, aflag, vflag;

	aflag = vflag = 0;
	fmt1 = fmt2 = NULL;

	while ((c = FUNC18(argc, argv, "af:v")) != -1) {
		switch (c) {
		case 'a':
			aflag++;
			break;
		case 'f':
			if (fmt1 != NULL) {
				if (fmt2 != NULL)
					FUNC11(1, "too many formats");
				fmt2 = optarg;
			} else
				fmt1 = optarg;
			break;
		case 'v':
			vflag++;
			break;
		default:
			FUNC22();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (vflag && fmt1 != NULL)
		FUNC11(1, "-v may not be used with -f");

	if (argc <= 0) {
		FUNC22();
		/* NOTREACHED */
	}

#ifdef __i386__
	if (vflag) {
		for (c = 0; c < argc; c++)
			dump_file(argv[c]);
		exit(error_count == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
	}
#endif

	rval = 0;
	for (; argc > 0; argc--, argv++) {
		int fd, status, is_shlib, rv, type;

		if ((fd = FUNC20(*argv, O_RDONLY, 0)) < 0) {
			FUNC24("%s", *argv);
			rval |= 1;
			continue;
		}
		rv = FUNC19(*argv, fd, &is_shlib, &type);
		FUNC6(fd);
		if (rv == 0) {
			rval |= 1;
			continue;
		}

		switch (type) {
		case TYPE_ELF:
		case TYPE_AOUT:
			break;
#if __ELF_WORD_SIZE > 32 && defined(ELF32_SUPPORTED)
		case TYPE_ELF32:
			rval |= execldd32(*argv, fmt1, fmt2, aflag, vflag);
			continue;
#endif
		case TYPE_UNKNOWN:
		default:
			/*
			 * This shouldn't happen unless is_executable()
			 * is broken.
			 */
			FUNC11(EDOOFUS, "unknown executable type");
		}

		/* ld.so magic */
		FUNC0("TRACE_LOADED_OBJECTS", "yes", 1);
		if (fmt1 != NULL)
			FUNC0("TRACE_LOADED_OBJECTS_FMT1", fmt1, 1);
		if (fmt2 != NULL)
			FUNC0("TRACE_LOADED_OBJECTS_FMT2", fmt2, 1);

		FUNC0("TRACE_LOADED_OBJECTS_PROGNAME", *argv, 1);
		if (aflag)
			FUNC0("TRACE_LOADED_OBJECTS_ALL", "1", 1);
		else if (fmt1 == NULL && fmt2 == NULL)
			/* Default formats */
			FUNC21("%s:\n", *argv);
		FUNC15(stdout);

		switch (FUNC16()) {
		case -1:
			FUNC10(1, "fork");
			break;
		default:
			if (FUNC23(&status) < 0) {
				FUNC24("wait");
				rval |= 1;
			} else if (FUNC3(status)) {
				FUNC17(stderr, "%s: signal %d\n", *argv,
				    FUNC4(status));
				rval |= 1;
			} else if (FUNC2(status) &&
			    FUNC1(status) != 0) {
				FUNC17(stderr, "%s: exit status %d\n", *argv,
				    FUNC1(status));
				rval |= 1;
			}
			break;
		case 0:
			if (is_shlib == 0) {
				FUNC12(*argv, *argv, (char *)NULL);
				FUNC24("%s", *argv);
			} else {
				FUNC8(*argv, RTLD_TRACE);
				FUNC25("%s: %s", *argv, FUNC7());
			}
			FUNC5(1);
		}
	}

	return rval;
}