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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int CAPH_IGNORE_EBADF ; 
 int CAPH_WRITE ; 
 int /*<<< orphan*/  DIFF_EXIT ; 
 scalar_t__ EMLINK ; 
 int /*<<< orphan*/  ERR_EXIT ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,int /*<<< orphan*/ ,scalar_t__,int,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,struct stat*) ; 
 int FUNC10 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int lflag ; 
 int /*<<< orphan*/  long_opts ; 
 int FUNC11 (char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char const*) ; 
 int sflag ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int xflag ; 
 int zflag ; 

int
FUNC16(int argc, char *argv[])
{
	struct stat sb1, sb2;
	off_t skip1, skip2;
	int ch, fd1, fd2, oflag, special;
	const char *file1, *file2;

	oflag = O_RDONLY;
	while ((ch = FUNC10(argc, argv, "+hlsxz", long_opts, NULL)) != -1)
		switch (ch) {
		case 'h':		/* Don't follow symlinks */
			oflag |= O_NOFOLLOW;
			break;
		case 'l':		/* print all differences */
			lflag = 1;
			break;
		case 's':		/* silent run */
			sflag = 1;
			zflag = 1;
			break;
		case 'x':		/* hex output */
			lflag = 1;
			xflag = 1;
			break;
		case 'z':		/* compare size first */
			zflag = 1;
			break;
		case '?':
		default:
			FUNC15();
		}
	argv += optind;
	argc -= optind;

	if (lflag && sflag)
		FUNC7(ERR_EXIT, "specifying -s with -l or -x is not permitted");

	if (argc < 2 || argc > 4)
		FUNC15();

	/* Don't limit rights on stdin since it may be one of the inputs. */
	if (FUNC5(STDOUT_FILENO, CAPH_WRITE | CAPH_IGNORE_EBADF))
		FUNC6(ERR_EXIT, "unable to limit rights on stdout");
	if (FUNC5(STDERR_FILENO, CAPH_WRITE | CAPH_IGNORE_EBADF))
		FUNC6(ERR_EXIT, "unable to limit rights on stderr");

	/* Backward compatibility -- handle "-" meaning stdin. */
	special = 0;
	if (FUNC13(file1 = argv[0], "-") == 0) {
		special = 1;
		fd1 = STDIN_FILENO;
		file1 = "stdin";
	} else if ((fd1 = FUNC11(file1, oflag, 0)) < 0 && errno != EMLINK) {
		if (!sflag)
			FUNC6(ERR_EXIT, "%s", file1);
		else
			FUNC8(ERR_EXIT);
	}
	if (FUNC13(file2 = argv[1], "-") == 0) {
		if (special)
			FUNC7(ERR_EXIT,
				"standard input may only be specified once");
		special = 1;
		fd2 = STDIN_FILENO;
		file2 = "stdin";
	} else if ((fd2 = FUNC11(file2, oflag, 0)) < 0 && errno != EMLINK) {
		if (!sflag)
			FUNC6(ERR_EXIT, "%s", file2);
		else
			FUNC8(ERR_EXIT);
	}

	skip1 = argc > 2 ? FUNC14(argv[2], NULL, 0) : 0;
	skip2 = argc == 4 ? FUNC14(argv[3], NULL, 0) : 0;

	if (fd1 == -1) {
		if (fd2 == -1) {
			FUNC1(file1, skip1, file2, skip2);
			FUNC8(0);
		} else if (!sflag)
			FUNC7(ERR_EXIT, "%s: Not a symbolic link", file2);
		else
			FUNC8(ERR_EXIT);
	} else if (fd2 == -1) {
		if (!sflag)
			FUNC7(ERR_EXIT, "%s: Not a symbolic link", file1);
		else
			FUNC8(ERR_EXIT);
	}

	/* FD rights are limited in c_special() and c_regular(). */
	FUNC4();

	if (!special) {
		if (FUNC9(fd1, &sb1)) {
			if (!sflag)
				FUNC6(ERR_EXIT, "%s", file1);
			else
				FUNC8(ERR_EXIT);
		}
		if (!FUNC0(sb1.st_mode))
			special = 1;
		else {
			if (FUNC9(fd2, &sb2)) {
				if (!sflag)
					FUNC6(ERR_EXIT, "%s", file2);
				else
					FUNC8(ERR_EXIT);
			}
			if (!FUNC0(sb2.st_mode))
				special = 1;
		}
	}

	if (special)
		FUNC3(fd1, file1, skip1, fd2, file2, skip2);
	else {
		if (zflag && sb1.st_size != sb2.st_size) {
			if (!sflag)
				(void) FUNC12("%s %s differ: size\n",
				    file1, file2);
			FUNC8(DIFF_EXIT);
		}
		FUNC2(fd1, file1, skip1, sb1.st_size,
		    fd2, file2, skip2, sb2.st_size);
	}
	FUNC8(0);
}