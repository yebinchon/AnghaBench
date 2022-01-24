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
typedef  scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MADV_SEQUENTIAL ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ batch ; 
 char* buf ; 
 scalar_t__ check_only ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int debug ; 
 char* empty_line ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  filemode ; 
 scalar_t__ force ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char** i_ptr ; 
 size_t i_size ; 
 char* i_womp ; 
 size_t input_lines ; 
 int last_line_missing_eol ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t) ; 
 scalar_t__ ok_to_create_file ; 
 int FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int out_of_mem ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (size_t*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char const* revision ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (char const*,struct stat*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static bool
FUNC20(const char *filename)
{
	int		ifd, statfailed;
	char		*p, *s;
	struct stat	filestat;
	ptrdiff_t	sz;
	size_t		i;
	size_t		iline, lines_allocated;

#ifdef DEBUGGING
	if (debug & 8)
		return false;
#endif

	if (filename == NULL || *filename == '\0')
		return false;

	statfailed = FUNC19(filename, &filestat);
	if (statfailed && ok_to_create_file) {
		if (verbose)
			FUNC17("(Creating file %s...)\n", filename);

		/*
		 * in check_patch case, we still display `Creating file' even
		 * though we're not. The rule is that -C should be as similar
		 * to normal patch behavior as possible
		 */
		if (check_only)
			return true;
		FUNC7(filename, true);
		FUNC2(FUNC3(filename, 0666));
		statfailed = FUNC19(filename, &filestat);
	}
	if (statfailed)
		FUNC4("can't find %s\n", filename);
	filemode = filestat.st_mode;
	if (!FUNC0(filemode))
		FUNC4("%s is not a normal file--can't patch\n", filename);
	if ((uint64_t)filestat.st_size > SIZE_MAX) {
		FUNC17("block too large to mmap\n");
		return false;
	}
	i_size = (size_t)filestat.st_size;
	if (out_of_mem) {
		FUNC18();	/* make sure dynamic arrays are allocated */
		out_of_mem = false;
		return false;	/* force plan b because plan a bombed */
	}
	if ((ifd = FUNC12(filename, O_RDONLY)) < 0)
		FUNC14("can't open file %s", filename);

	if (i_size) {
		i_womp = FUNC10(NULL, i_size, PROT_READ, MAP_PRIVATE, ifd, 0);
		if (i_womp == MAP_FAILED) {
			FUNC13("mmap failed");
			i_womp = NULL;
			FUNC2(ifd);
			return false;
		}
	} else {
		i_womp = NULL;
	}

	FUNC2(ifd);
	if (i_size)
		FUNC6(i_womp, i_size, MADV_SEQUENTIAL);

	/* estimate the number of lines */
	lines_allocated = i_size / 25;
	if (lines_allocated < 100)
		lines_allocated = 100;

	if (!FUNC15(&lines_allocated))
		return false;

	/* now scan the buffer and build pointer array */
	iline = 1;
	i_ptr[iline] = i_womp;
	/*
	 * Testing for NUL here actively breaks files that innocently use NUL
	 * for other reasons. mmap(2) succeeded, just scan the whole buffer.
	 */
	for (s = i_womp, i = 0; i < i_size; s++, i++) {
		if (*s == '\n') {
			if (iline == lines_allocated) {
				if (!FUNC15(&lines_allocated))
					return false;
			}
			/* these are NOT NUL terminated */
			i_ptr[++iline] = s + 1;
		}
	}
	/* if the last line contains no EOL, append one */
	if (i_size > 0 && i_womp[i_size - 1] != '\n') {
		last_line_missing_eol = true;
		/* fix last line */
		sz = s - i_ptr[iline];
		p = FUNC8(sz + 1);
		if (p == NULL) {
			FUNC5(i_ptr);
			i_ptr = NULL;
			FUNC11(i_womp, i_size);
			i_womp = NULL;
			return false;
		}

		FUNC9(p, i_ptr[iline], sz);
		p[sz] = '\n';
		i_ptr[iline] = p;
		/* count the extra line and make it point to some valid mem */
		i_ptr[++iline] = empty_line;
	} else
		last_line_missing_eol = false;

	input_lines = iline - 1;

	/* now check for revision, if any */

	if (revision != NULL) {
		if (i_womp == NULL || !FUNC16(i_womp)) {
			if (force) {
				if (verbose)
					FUNC17("Warning: this file doesn't appear "
					    "to be the %s version--patching anyway.\n",
					    revision);
			} else if (batch) {
				FUNC4("this file doesn't appear to be the "
				    "%s version--aborting.\n",
				    revision);
			} else {
				FUNC1("This file doesn't appear to be the "
				    "%s version--patch anyway? [n] ",
				    revision);
				if (*buf != 'y')
					FUNC4("aborted\n");
			}
		} else if (verbose)
			FUNC17("Good.  This file appears to be the %s version.\n",
			    revision);
	}
	return true;		/* plan a will work */
}