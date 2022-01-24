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
typedef  int /*<<< orphan*/  wrkdir ;
typedef  int /*<<< orphan*/  tmpstr ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int STDERR_FILENO ; 
 int STDOUT_FILENO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC21(ACPI_TABLE_HEADER *rsdt, ACPI_TABLE_HEADER *dsdp)
{
	char buf[PATH_MAX], tmpstr[PATH_MAX], wrkdir[PATH_MAX];
	const char *iname = "/acpdump.din";
	const char *oname = "/acpdump.dsl";
	const char *tmpdir;
	FILE *fp;
	size_t len;
	int fd, status;
	pid_t pid;

	tmpdir = FUNC10("TMPDIR");
	if (tmpdir == NULL)
		tmpdir = _PATH_TMP;
	if (FUNC14(tmpdir, buf) == NULL) {
		FUNC13("realpath tmp dir");
		return;
	}
	len = sizeof(wrkdir) - FUNC17(iname);
	if ((size_t)FUNC16(wrkdir, len, "%s/acpidump.XXXXXX", buf) > len-1 ) {
		FUNC7(stderr, "$TMPDIR too long\n");
		return;
	}
	if  (FUNC11(wrkdir) == NULL) {
		FUNC13("mkdtemp tmp working dir");
		return;
	}
	len = (size_t)FUNC16(tmpstr, sizeof(tmpstr), "%s%s", wrkdir, iname);
	FUNC0(len <= sizeof(tmpstr) - 1);
	fd = FUNC12(tmpstr, O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
	if (fd < 0) {
		FUNC13("iasl tmp file");
		return;
	}
	FUNC20(fd, rsdt, dsdp);
	FUNC1(fd);

	/* Run iasl -d on the temp file */
	if ((pid = FUNC6()) == 0) {
		FUNC1(STDOUT_FILENO);
		if (vflag == 0)
			FUNC1(STDERR_FILENO);
		FUNC3("/usr/sbin/iasl", "iasl", "-d", tmpstr, NULL);
		FUNC2(1, "exec");
	}
	if (pid > 0)
		FUNC19(&status);
	if (FUNC18(tmpstr) < 0) {
		FUNC13("unlink");
		goto out;
	}
	if (pid < 0) {
		FUNC13("fork");
		goto out;
	}
	if (status != 0) {
		FUNC7(stderr, "iast exit status = %d\n", status);
	}

	/* Dump iasl's output to stdout */
	len = (size_t)FUNC16(tmpstr, sizeof(tmpstr), "%s%s", wrkdir, oname);
	FUNC0(len <= sizeof(tmpstr) - 1);
	fp = FUNC5(tmpstr, "r");
	if (FUNC18(tmpstr) < 0) {
		FUNC13("unlink");
		goto out;
	}
	if (fp == NULL) {
		FUNC13("iasl tmp file (read)");
		goto out;
	}
	while ((len = FUNC8(buf, 1, sizeof(buf), fp)) > 0)
		FUNC9(buf, 1, len, stdout);
	FUNC4(fp);

    out:
	if (FUNC15(wrkdir) < 0)
		FUNC13("rmdir");
}