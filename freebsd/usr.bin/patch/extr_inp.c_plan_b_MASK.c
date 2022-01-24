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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFFERSIZE ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char const* TMPINNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ batch ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 scalar_t__ force ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t input_lines ; 
 int last_line_missing_eol ; 
 size_t lines_per_buf ; 
 void* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/ * revision ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC16 (char*) ; 
 char** tibuf ; 
 size_t tibuflen ; 
 int /*<<< orphan*/  tifd ; 
 size_t tireclen ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int using_plan_a ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void
FUNC19(const char *filename)
{
	FILE	*ifp;
	size_t	i = 0, j, len, maxlen = 1;
	char	*lbuf = NULL, *p;
	bool	found_revision = (revision == NULL);

	using_plan_a = false;
	if ((ifp = FUNC7(filename, "r")) == NULL)
		FUNC13("can't open file %s", filename);
	FUNC17(TMPINNAME);
	if ((tifd = FUNC12(TMPINNAME, O_EXCL | O_CREAT | O_WRONLY, 0666)) < 0)
		FUNC13("can't open file %s", TMPINNAME);
	while ((p = FUNC5(ifp, &len)) != NULL) {
		if (p[len - 1] == '\n')
			p[len - 1] = '\0';
		else {
			/* EOF without EOL, copy and add the NUL */
			if ((lbuf = FUNC10(len + 1)) == NULL)
				FUNC2("out of memory\n");
			FUNC11(lbuf, p, len);
			lbuf[len] = '\0';
			p = lbuf;

			last_line_missing_eol = true;
			len++;
		}
		if (revision != NULL && !found_revision && FUNC14(p))
			found_revision = true;
		if (len > maxlen)
			maxlen = len;   /* find longest line */
	}
	FUNC8(lbuf);
	if (FUNC4(ifp))
		FUNC13("can't read file %s", filename);

	if (revision != NULL) {
		if (!found_revision) {
			if (force) {
				if (verbose)
					FUNC15("Warning: this file doesn't appear "
					    "to be the %s version--patching anyway.\n",
					    revision);
			} else if (batch) {
				FUNC2("this file doesn't appear to be the "
				    "%s version--aborting.\n",
				    revision);
			} else {
				FUNC0("This file doesn't appear to be the %s "
				    "version--patch anyway? [n] ",
				    revision);
				if (*buf != 'y')
					FUNC2("aborted\n");
			}
		} else if (verbose)
			FUNC15("Good.  This file appears to be the %s version.\n",
			    revision);
	}
	FUNC9(ifp, 0L, SEEK_SET);	/* rewind file */
	tireclen = maxlen;
	tibuflen = maxlen > BUFFERSIZE ? maxlen : BUFFERSIZE;
	lines_per_buf = tibuflen / maxlen;
	tibuf[0] = FUNC10(tibuflen + 1);
	if (tibuf[0] == NULL)
		FUNC2("out of memory\n");
	tibuf[1] = FUNC10(tibuflen + 1);
	if (tibuf[1] == NULL)
		FUNC2("out of memory\n");
	for (i = 1;; i++) {
		p = tibuf[0] + maxlen * (i % lines_per_buf);
		if (i % lines_per_buf == 0)	/* new block */
			if (FUNC18(tifd, tibuf[0], tibuflen) !=
			    (ssize_t) tibuflen)
				FUNC13("can't write temp file");
		if (FUNC6(p, maxlen + 1, ifp) == NULL) {
			input_lines = i - 1;
			if (i % lines_per_buf != 0)
				if (FUNC18(tifd, tibuf[0], tibuflen) !=
				    (ssize_t) tibuflen)
					FUNC13("can't write temp file");
			break;
		}
		j = FUNC16(p);
		/* These are '\n' terminated strings, so no need to add a NUL */
		if (j == 0 || p[j - 1] != '\n')
			p[j] = '\n';
	}
	FUNC3(ifp);
	FUNC1(tifd);
	if ((tifd = FUNC12(TMPINNAME, O_RDONLY)) < 0)
		FUNC13("can't reopen file %s", TMPINNAME);
}