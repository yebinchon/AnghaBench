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
typedef  int /*<<< orphan*/  tempname ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int PATHSIZE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char* _PATH_CSHELL ; 
 int /*<<< orphan*/ * collf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* tmpdir ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

void
FUNC13(FILE *fp, char cmd[])
{
	FILE *nf;
	int fd;
	sig_t sigint = FUNC9(SIGINT, SIG_IGN);
	char *sh, tempname[PATHSIZE];

	(void)FUNC10(tempname, sizeof(tempname),
	    "%s/mail.ReXXXXXXXXXX", tmpdir);
	if ((fd = FUNC6(tempname)) == -1 ||
	    (nf = FUNC1(fd, "w+")) == NULL) {
		FUNC12("%s", tempname);
		goto out;
	}
	(void)FUNC7(tempname);
	/*
	 * stdin = current message.
	 * stdout = new message.
	 */
	if ((sh = FUNC11("SHELL")) == NULL)
		sh = _PATH_CSHELL;
	if (FUNC8(sh,
	    0, FUNC2(fp), FUNC2(nf), "-c", cmd, NULL) < 0) {
		(void)FUNC0(nf);
		goto out;
	}
	if (FUNC5(nf) == 0) {
		FUNC3(stderr, "No bytes from \"%s\" !?\n", cmd);
		(void)FUNC0(nf);
		goto out;
	}
	/*
	 * Take new files.
	 */
	(void)FUNC4(nf, (off_t)0, SEEK_END);
	collf = nf;
	(void)FUNC0(fp);
out:
	(void)FUNC9(SIGINT, sigint);
}