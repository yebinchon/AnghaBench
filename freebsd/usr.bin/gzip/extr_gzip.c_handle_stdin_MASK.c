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
struct stat {size_t st_size; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  header1 ;
typedef  enum filetype { ____Placeholder_filetype } filetype ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  FT_BZIP2 133 
#define  FT_GZIP 132 
#define  FT_LZ 131 
#define  FT_PACK 130 
#define  FT_XZ 129 
#define  FT_Z 128 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ fflag ; 
 int FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,char*) ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tflag ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*) ; 

__attribute__((used)) static void
FUNC21(void)
{
	struct stat isb;
	unsigned char header1[4];
	size_t in_size;
	off_t usize, gsize;
	enum filetype method;
	ssize_t bytes_read;
#ifndef NO_COMPRESS_SUPPORT
	FILE *in;
#endif

#ifndef SMALL
	if (fflag == 0 && lflag == 0 && FUNC8(STDIN_FILENO)) {
		FUNC10("standard input is a terminal -- ignoring");
		goto out;
	}
#endif

	if (FUNC4(STDIN_FILENO, &isb) < 0) {
		FUNC9("fstat");
		goto out;
	}
	if (FUNC0(isb.st_mode))
		in_size = isb.st_size;
	else
		in_size = 0;
	FUNC7("(stdin)", in_size);

	if (lflag) {
		FUNC11(STDIN_FILENO, in_size, infile, isb.st_mtime);
		goto out;
	}

	bytes_read = FUNC14(STDIN_FILENO, header1, sizeof header1);
	if (bytes_read == -1) {
		FUNC9("can't read stdin");
		goto out;
	} else if (bytes_read != sizeof(header1)) {
		FUNC10("(stdin): unexpected end of file");
		goto out;
	}

	method = FUNC3(header1);
	switch (method) {
	default:
#ifndef SMALL
		if (fflag == 0) {
			FUNC10("unknown compression format");
			goto out;
		}
		usize = FUNC1(header1, sizeof header1, &gsize, STDIN_FILENO);
		break;
#endif
	case FT_GZIP:
		usize = FUNC5(STDIN_FILENO, STDOUT_FILENO,
			      (char *)header1, sizeof header1, &gsize, "(stdin)");
		break;
#ifndef NO_BZIP2_SUPPORT
	case FT_BZIP2:
		usize = FUNC15(STDIN_FILENO, STDOUT_FILENO,
				(char *)header1, sizeof header1, &gsize);
		break;
#endif
#ifndef NO_COMPRESS_SUPPORT
	case FT_Z:
		if ((in = FUNC19(STDIN_FILENO)) == NULL) {
			FUNC10("zopen of stdin");
			goto out;
		}

		usize = FUNC20(in, stdout, (char *)header1,
		    sizeof header1, &gsize);
		FUNC2(in);
		break;
#endif
#ifndef NO_PACK_SUPPORT
	case FT_PACK:
		usize = FUNC17(STDIN_FILENO, STDOUT_FILENO,
			       (char *)header1, sizeof header1, &gsize);
		break;
#endif
#ifndef NO_XZ_SUPPORT
	case FT_XZ:
		usize = FUNC18(STDIN_FILENO, STDOUT_FILENO,
			     (char *)header1, sizeof header1, &gsize);
		break;
#endif
#ifndef NO_LZ_SUPPORT
	case FT_LZ:
		usize = FUNC16(STDIN_FILENO, STDOUT_FILENO,
			     (char *)header1, sizeof header1, &gsize);
		break;
#endif
	}

#ifndef SMALL
        if (vflag && !tflag && usize != -1 && gsize != -1)
		FUNC13(NULL, NULL, usize, gsize);
	if (vflag && tflag)
		FUNC12("(stdin)", usize != -1);
#else
	(void)&usize;
#endif

out:
	FUNC6();
}