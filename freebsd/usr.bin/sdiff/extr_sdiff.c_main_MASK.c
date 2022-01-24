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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DIFFPROG_OPT 133 
 scalar_t__ EOF ; 
#define  FCASE_IGNORE_OPT 132 
#define  FCASE_SENSITIVE_OPT 131 
#define  HELP_OPT 130 
 int /*<<< orphan*/  INT_MAX ; 
 int Iflag ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
#define  STRIPCR_OPT 129 
#define  TSIZE_OPT 128 
 int FUNC0 (int) ; 
 size_t WIDTH ; 
 int /*<<< orphan*/  WIDTH_MIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* _PATH_TMP ; 
 scalar_t__ FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char** FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* diff_path ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,char*) ; 
 int file1ln ; 
 int file2ln ; 
 void* FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** help_msg ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int lflag ; 
 int line_width ; 
 int /*<<< orphan*/  longopts ; 
 char* FUNC20 (char*) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * outfp ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 char* FUNC25 (char*,int) ; 
 int sflag ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,char*,...) ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int FUNC28 (char*) ; 
 size_t FUNC29 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* tmpdir ; 
 scalar_t__ FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int FUNC32 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*) ; 
 int width ; 
 char* FUNC34 (int /*<<< orphan*/ *) ; 

int
FUNC35(int argc, char **argv)
{
	FILE *diffpipe=NULL, *file1, *file2;
	size_t diffargc = 0, wflag = WIDTH;
	int ch, fd[2] = {-1}, status;
	pid_t pid=0;
	const char *outfile = NULL;
	char **diffargv, *diffprog = diff_path, *filename1, *filename2,
	     *tmp1, *tmp2, *s1, *s2;
	int i;
	char I_arg[] = "-I";
	char speed_lf[] = "--speed-large-files";

	/*
	 * Process diff flags.
	 */
	/*
	 * Allocate memory for diff arguments and NULL.
	 * Each flag has at most one argument, so doubling argc gives an
	 * upper limit of how many diff args can be passed.  argv[0],
	 * file1, and file2 won't have arguments so doubling them will
	 * waste some memory; however we need an extra space for the
	 * NULL at the end, so it sort of works out.
	 */
	if (!(diffargv = FUNC4(argc, sizeof(char **) * 2)))
		FUNC8(2, "main");

	/* Add first argument, the program name. */
	diffargv[diffargc++] = diffprog;

	/* create a dynamic string for merging single-switch options */
	if ( FUNC2(&diffargv[diffargc++], "-")  < 0 )
		FUNC8(2, "main");

	while ((ch = FUNC18(argc, argv, "aBbdEHI:ilo:stWw:",
	    longopts, NULL)) != -1) {
		const char *errstr;

		switch (ch) {
		/* only compatible --long-name-form with diff */
		case FCASE_IGNORE_OPT:
		case FCASE_SENSITIVE_OPT:
		case STRIPCR_OPT:
		case TSIZE_OPT:
		case 'S':
		break;
		/* combine no-arg single switches */
		case 'a':
		case 'B':
		case 'b':
		case 'd':
		case 'E':
		case 'i':
		case 't':
		case 'W':
			diffargv[1]  = FUNC25(diffargv[1], sizeof(char) * FUNC28(diffargv[1]) + 2);
			/*
			 * In diff, the 'W' option is 'w' and the 'w' is 'W'.
			 */
			if (ch == 'W')
				FUNC26(diffargv[1], "%sw", diffargv[1]);
			else
				FUNC26(diffargv[1], "%s%c", diffargv[1], ch);
			break;
		case 'H':
			diffargv[diffargc++] = speed_lf;
			break;
		case DIFFPROG_OPT:
			diffargv[0] = diffprog = optarg;
			break;
		case 'I':
			Iflag = 1;
			diffargv[diffargc++] = I_arg;
			diffargv[diffargc++] = optarg;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'o':
			outfile = optarg;
			break;
		case 's':
			sflag = 1;
			break;
		case 'w':
			wflag = FUNC29(optarg, WIDTH_MIN,
			    INT_MAX, &errstr);
			if (errstr)
				FUNC9(2, "width is %s: %s", errstr, optarg);
			break;
		case HELP_OPT:
			for (i = 0; help_msg[i] != NULL; i++)
				FUNC23("%s\n", help_msg[i]);
			FUNC11(0);
			break;
		default:
			FUNC31();
			break;
		}
	}

	/* no single switches were used */
	if (FUNC27(diffargv[1], "-") == 0 ) {
		for ( i = 1; i < argc-1; i++) {
			diffargv[i] = diffargv[i+1];
		}
		diffargv[diffargc-1] = NULL;
		diffargc--;
	}

	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC31();

	if (outfile && (outfp = FUNC14(outfile, "w")) == NULL)
		FUNC8(2, "could not open: %s", optarg);

	if ((tmpdir = FUNC17("TMPDIR")) == NULL || *tmpdir == '\0')
		tmpdir = _PATH_TMP;

	filename1 = argv[0];
	filename2 = argv[1];

	/*
	 * Create temporary files for diff and sdiff to share if file1
	 * or file2 are not regular files.  This allows sdiff and diff
	 * to read the same inputs if one or both inputs are stdin.
	 *
	 * If any temporary files were created, their names would be
	 * saved in tmp1 or tmp2.  tmp1 should never equal tmp2.
	 */
	tmp1 = tmp2 = NULL;
	/* file1 and file2 are the same, so copy to same temp file. */
	if (FUNC27(filename1, filename2) == 0) {
		if ((tmp1 = FUNC20(filename1)))
			filename1 = filename2 = tmp1;
	/* Copy file1 and file2 into separate temp files. */
	} else {
		if ((tmp1 = FUNC20(filename1)))
			filename1 = tmp1;
		if ((tmp2 = FUNC20(filename2)))
			filename2 = tmp2;
	}

	diffargv[diffargc++] = filename1;
	diffargv[diffargc++] = filename2;
	/* Add NULL to end of array to indicate end of array. */
	diffargv[diffargc++] = NULL;

	/* Subtract column divider and divide by two. */
	width = (wflag - 3) / 2;
	/* Make sure line_width can fit in size_t. */
	if (width > (SIZE_MAX - 3) / 2)
		FUNC9(2, "width is too large: %zu", width);
	line_width = width * 2 + 3;

	if (FUNC22(fd))
		FUNC8(2, "pipe");

	switch (pid = FUNC15()) {
	case 0:
		/* child */
		/* We don't read from the pipe. */
		FUNC5(fd[0]);
		if (FUNC6(fd[1], STDOUT_FILENO) == -1)
			FUNC8(2, "child could not duplicate descriptor");
		/* Free unused descriptor. */
		FUNC5(fd[1]);
		FUNC10(diffprog, diffargv);
		FUNC8(2, "could not execute diff: %s", diffprog);
		break;
	case -1:
		FUNC8(2, "could not fork");
		break;
	}

	/* parent */
	/* We don't write to the pipe. */
	FUNC5(fd[1]);

	/* Open pipe to diff command. */
	if ((diffpipe = FUNC13(fd[0], "r")) == NULL)
		FUNC8(2, "could not open diff pipe");

	if ((file1 = FUNC14(filename1, "r")) == NULL)
		FUNC8(2, "could not open %s", filename1);
	if ((file2 = FUNC14(filename2, "r")) == NULL)
		FUNC8(2, "could not open %s", filename2);
	if (!FUNC19(file1) || !FUNC19(file2)) {
		/* Close open files and pipe, delete temps */
		FUNC12(file1);
		FUNC12(file2);
		if (diffpipe != NULL)
			FUNC12(diffpipe);
		if (tmp1)
			if (FUNC30(tmp1))
				FUNC33("Error deleting %s.", tmp1);
		if (tmp2)
			if (FUNC30(tmp2))
				FUNC33("Error deleting %s.", tmp2);
		FUNC16(tmp1);
		FUNC16(tmp2);
		FUNC3(diffprog, filename1, filename2);
	}
	/* Line numbers start at one. */
	file1ln = file2ln = 1;

	/* Read and parse diff output. */
	while (FUNC21(diffpipe, file1, file2) != EOF)
		;
	FUNC12(diffpipe);

	/* Wait for diff to exit. */
	if (FUNC32(pid, &status, 0) == -1 || !FUNC1(status) ||
	    FUNC0(status) >= 2)
		FUNC8(2, "diff exited abnormally.");

	/* Delete and free unneeded temporary files. */
	if (tmp1)
		if (FUNC30(tmp1))
			FUNC33("Error deleting %s.", tmp1);
	if (tmp2)
		if (FUNC30(tmp2))
			FUNC33("Error deleting %s.", tmp2);
	FUNC16(tmp1);
	FUNC16(tmp2);
	filename1 = filename2 = tmp1 = tmp2 = NULL;

	/* No more diffs, so print common lines. */
	if (lflag)
		while ((s1 = FUNC34(file1)))
			FUNC7(s1, ' ', NULL);
	else
		for (;;) {
			s1 = FUNC34(file1);
			s2 = FUNC34(file2);
			if (s1 || s2)
				FUNC7(s1, ' ', s2);
			else
				break;
		}
	FUNC12(file1);
	FUNC12(file2);
	/* Process unmodified lines. */
	FUNC24();

	/* Return diff exit status. */
	return (FUNC0(status));
}