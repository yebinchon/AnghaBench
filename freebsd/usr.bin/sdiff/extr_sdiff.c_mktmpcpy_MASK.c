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
typedef  int /*<<< orphan*/  u_char ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,struct stat*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  tmpdir ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static char *
FUNC13(const char *source_file)
{
	struct stat sb;
	ssize_t rcount;
	int ifd, ofd;
	u_char buf[BUFSIZ];
	char *target_file;

	/* Open input and output. */
	ifd = FUNC7(source_file, O_RDONLY, 0);
	/* File was opened successfully. */
	if (ifd != -1) {
		if (FUNC5(ifd, &sb) == -1)
			FUNC3(2, "error getting file status from %s", source_file);

		/* Regular file. */
		if (FUNC0(sb.st_mode)) {
			FUNC2(ifd);
			return (NULL);
		}
	} else {
		/* If ``-'' does not exist the user meant stdin. */
		if (errno == ENOENT && FUNC9(source_file, "-") == 0)
			ifd = STDIN_FILENO;
		else
			FUNC3(2, "error opening %s", source_file);
	}

	/* Not a regular file, so copy input into temporary file. */
	if (FUNC1(&target_file, "%d/sdiff.XXXXXXXXXX", tmpdir) == -1)
		FUNC3(2, "asprintf");
	if ((ofd = FUNC6(target_file)) == -1) {
		FUNC11("error opening %s", target_file);
		goto FAIL;
	}
	while ((rcount = FUNC8(ifd, buf, sizeof(buf))) != -1 &&
	    rcount != 0) {
		ssize_t wcount;

		wcount = FUNC12(ofd, buf, (size_t)rcount);
		if (-1 == wcount || rcount != wcount) {
			FUNC11("error writing to %s", target_file);
			goto FAIL;
		}
	}
	if (rcount == -1) {
		FUNC11("error reading from %s", source_file);
		goto FAIL;
	}

	FUNC2(ifd);
	FUNC2(ofd);

	return (target_file);

FAIL:
	FUNC10(target_file);
	FUNC4(2);
}