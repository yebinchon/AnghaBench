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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,struct stat*) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*) ; 
 int FUNC17 (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC18(const char *file)
{
	struct stat st;
	FILE *fp, *pp;
	int error, osz, r;
	unsigned int i, off, size, t1, t2, align;
	char *cmd, *o;

	r = FUNC14(file, O_RDONLY);
	if (r == -1)
		FUNC4(EXIT_FAILURE, "Couldn't open file '%s'", file);
	error = FUNC13(r, &st);
	if (error == -1)
		FUNC4(EXIT_FAILURE, "fstat() failed");
	if (FUNC0(st.st_mode))
		FUNC5(EXIT_FAILURE, "'%s' is a directory", file);
	fp = FUNC7(r, "r");
	if (fp == NULL)
		FUNC4(EXIT_FAILURE, "fdopen() failed");
	osz = 1024;
	o = FUNC3(1, osz);
	if (o == NULL)
		FUNC4(EXIT_FAILURE, "Couldn't allocate memory");
	/* ELF note section header. */
	FUNC1(&cmd, "/usr/bin/elfdump -c %s | grep -A 8 kern_conf"
	    "| tail -5 | cut -d ' ' -f 2 | paste - - - - -", file);
	if (cmd == NULL)
		FUNC5(EXIT_FAILURE, "asprintf() failed");
	pp = FUNC16(cmd, "r");
	if (pp == NULL)
		FUNC5(EXIT_FAILURE, "popen() failed");
	FUNC11(cmd);
	(void)FUNC10(o, osz, 1, pp);
	FUNC15(pp);
	r = FUNC17(o, "%d%d%d%d%d", &off, &size, &t1, &t2, &align);
	FUNC11(o);
	if (r != 5)
		FUNC5(EXIT_FAILURE, "File %s doesn't contain configuration "
		    "file. Either unsupported, or not compiled with "
		    "INCLUDE_CONFIG_FILE", file);
	r = FUNC12(fp, off, SEEK_CUR);
	if (r != 0)
		FUNC4(EXIT_FAILURE, "fseek() failed");
	for (i = 0; i < size; i++) {
		r = FUNC8(fp);
		if (r == EOF)
			break;
		if (r == '\0') {
			FUNC2(i == size - 1 &&
			    ("\\0 found in the middle of a file"));
			break;
		}
		FUNC9(r, stdout);
	}
	FUNC6(fp);
}