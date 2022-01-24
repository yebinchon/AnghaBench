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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_MISC ; 
 char* FILENAME ; 
 int MAXPATHLEN ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char const*,int,int) ; 
 scalar_t__ FUNC6 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7(void)
{
	int fd;
	char path[MAXPATHLEN];
	const char *p;

	/*
	 * POSIX mandates if the standard output is a terminal, the standard
	 * output is appended to nohup.out in the working directory.  Failing
	 * that, it will be appended to nohup.out in the directory obtained
	 * from the HOME environment variable.  If file creation is required,
	 * the mode_t is set to S_IRUSR | S_IWUSR.
	 */
	p = FILENAME;
	fd = FUNC5(p, O_RDWR | O_CREAT | O_APPEND, S_IRUSR | S_IWUSR);
	if (fd != -1)
		goto dupit;
	if ((p = FUNC4("HOME")) != NULL && *p != '\0' &&
	    (size_t)FUNC6(path, sizeof(path), "%s/%s", p, FILENAME) <
	    sizeof(path)) {
		fd = FUNC5(p = path, O_RDWR | O_CREAT | O_APPEND,
		    S_IRUSR | S_IWUSR);
		if (fd != -1)
			goto dupit;
	}
	FUNC2(EXIT_MISC, "can't open a nohup.out file");

dupit:
	if (FUNC0(fd, STDOUT_FILENO) == -1)
		FUNC1(EXIT_MISC, NULL);
	(void)FUNC3(stderr, "appending output to %s\n", p);
}