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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFD ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,char const*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

FILE *
FUNC8(char *cmd, const char *mode)
{
	int p[2];
	int myside, hisside, fd0, fd1;
	pid_t pid;
	sigset_t nset;
	FILE *fp;

	if (FUNC3(p) < 0)
		return (NULL);
	(void)FUNC1(p[READ], F_SETFD, 1);
	(void)FUNC1(p[WRITE], F_SETFD, 1);
	if (*mode == 'r') {
		myside = p[READ];
		hisside = fd0 = fd1 = p[WRITE];
	} else {
		myside = p[WRITE];
		hisside = fd0 = p[READ];
		fd1 = -1;
	}
	(void)FUNC5(&nset);
	pid = FUNC6(FUNC7("SHELL"), &nset, fd0, fd1, "-c", cmd, NULL);
	if (pid < 0) {
		(void)FUNC0(p[READ]);
		(void)FUNC0(p[WRITE]);
		return (NULL);
	}
	(void)FUNC0(hisside);
	if ((fp = FUNC2(myside, mode)) != NULL)
		FUNC4(fp, 1, pid);
	return (fp);
}