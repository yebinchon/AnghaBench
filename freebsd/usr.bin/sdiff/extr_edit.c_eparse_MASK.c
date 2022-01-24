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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int FUNC0 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 size_t FUNC11 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  outfp ; 
 size_t FUNC14 (char*) ; 
 char const* tmpdir ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (int,char*,size_t) ; 

int
FUNC19(const char *cmd, const char *left, const char *right)
{
	FILE *file;
	size_t nread;
	int fd;
	char *filename;
	char buf[BUFSIZ], *text;

	/* Skip whitespace. */
	while (FUNC12(*cmd))
		++cmd;

	text = NULL;
	switch (*cmd) {
	case '\0':
		/* Edit empty file. */
		break;

	case 'b':
		/* Both strings. */
		if (left == NULL)
			goto RIGHT;
		if (right == NULL)
			goto LEFT;

		/* Neither column is blank, so print both. */
		if (FUNC0(&text, "%s\n%s\n", left, right) == -1)
			FUNC4(2, "could not allocate memory");
		break;

	case 'l':
LEFT:
		/* Skip if there is no left column. */
		if (left == NULL)
			break;

		if (FUNC0(&text, "%s\n", left) == -1)
			FUNC4(2, "could not allocate memory");

		break;

	case 'r':
RIGHT:
		/* Skip if there is no right column. */
		if (right == NULL)
			break;

		if (FUNC0(&text, "%s\n", right) == -1)
			FUNC4(2, "could not allocate memory");

		break;

	default:
		return (-1);
	}

	/* Create temp file. */
	if (FUNC0(&filename, "%s/sdiff.XXXXXXXXXX", tmpdir) == -1)
		FUNC4(2, "asprintf");
	if ((fd = FUNC13(filename)) == -1)
		FUNC4(2, "mkstemp");
	if (text != NULL) {
		size_t len;
		ssize_t nwritten;

		len = FUNC14(text);
		if ((nwritten = FUNC18(fd, text, len)) == -1 ||
		    (size_t)nwritten != len) {
			FUNC16("error writing to temp file");
			FUNC1(filename);
		}
	}
	FUNC2(fd);

	/* text is no longer used. */
	FUNC10(text);

	/* Edit temp file. */
	if (FUNC3(filename) == -1) {
		FUNC16("error editing %s", filename);
		FUNC1(filename);
	}

	/* Open temporary file. */
	if (!(file = FUNC8(filename, "r"))) {
		FUNC16("could not open edited file: %s", filename);
		FUNC1(filename);
	}

	/* Copy temporary file contents to output file. */
	for (nread = sizeof(buf); nread == sizeof(buf);) {
		size_t nwritten;

		nread = FUNC9(buf, sizeof(*buf), sizeof(buf), file);
		/* Test for error or end of file. */
		if (nread != sizeof(buf) &&
		    (FUNC7(file) || !FUNC6(file))) {
			FUNC17("error reading edited file: %s", filename);
			FUNC1(filename);
		}

		/*
		 * If we have nothing to read, break out of loop
		 * instead of writing nothing.
		 */
		if (!nread)
			break;

		/* Write data we just read. */
		nwritten = FUNC11(buf, sizeof(*buf), nread, outfp);
		if (nwritten != nread) {
			FUNC17("error writing to output file");
			FUNC1(filename);
		}
	}

	/* We've reached the end of the temporary file, so remove it. */
	if (FUNC15(filename))
		FUNC16("could not delete: %s", filename);
	FUNC5(file);

	FUNC10(filename);

	return (0);
}