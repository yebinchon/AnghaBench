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
typedef  scalar_t__ uint32_t ;
typedef  int time_t ;
struct stat {scalar_t__ st_mtime; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ fflag ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  tflag ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC9(void)
{
	off_t gsize;
#ifndef SMALL
	off_t usize;
	struct stat sb;
	time_t systime;
	uint32_t mtime;
	int ret;

	FUNC3("(stdout)", 0);

	if (fflag == 0 && FUNC4(STDOUT_FILENO)) {
		FUNC6("standard output is a terminal -- ignoring");
		return;
	}

	/* If stdin is a file use its mtime, otherwise use current time */
	ret = FUNC1(STDIN_FILENO, &sb);
	if (ret < 0) {
		FUNC5("Can't stat stdin");
		return;
	}

	if (FUNC0(sb.st_mode)) {
		FUNC3("(stdout)", sb.st_size);
		mtime = (uint32_t)sb.st_mtime;
	} else {
		systime = FUNC8(NULL);
		if (systime == -1) {
			FUNC5("time");
			return;
		}
		mtime = (uint32_t)systime;
	}
	 		
	usize =
#endif
		FUNC2(STDIN_FILENO, STDOUT_FILENO, &gsize, "", mtime);
#ifndef SMALL
        if (vflag && !tflag && usize != -1 && gsize != -1)
		FUNC7(NULL, NULL, usize, gsize);
#endif
}