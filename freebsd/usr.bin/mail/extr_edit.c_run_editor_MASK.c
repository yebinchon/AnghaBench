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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  tempname ;
struct stat {scalar_t__ st_mtime; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int PATHSIZE ; 
 char* _PATH_EX ; 
 char* _PATH_VI ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 char* tmpdir ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

FILE *
FUNC18(FILE *fp, off_t size, int type, int readonly)
{
	FILE *nf = NULL;
	int t;
	time_t modtime;
	char *edit, tempname[PATHSIZE];
	struct stat statb;

	(void)FUNC13(tempname, sizeof(tempname),
	    "%s/mail.ReXXXXXXXXXX", tmpdir);
	if ((t = FUNC9(tempname)) == -1 ||
	    (nf = FUNC1(t, "w")) == NULL) {
		FUNC16("%s", tempname);
		goto out;
	}
	if (readonly && FUNC3(t, 0400) == -1) {
		FUNC16("%s", tempname);
		(void)FUNC11(tempname);
		goto out;
	}
	if (size >= 0)
		while (--size >= 0 && (t = FUNC8(fp)) != EOF)
			(void)FUNC10(t, nf);
	else
		while ((t = FUNC8(fp)) != EOF)
			(void)FUNC10(t, nf);
	(void)FUNC5(nf);
	if (FUNC7(FUNC6(nf), &statb) < 0)
		modtime = 0;
	else
		modtime = statb.st_mtime;
	if (FUNC4(nf)) {
		(void)FUNC0(nf);
		FUNC17("%s", tempname);
		(void)FUNC11(tempname);
		nf = NULL;
		goto out;
	}
	if (FUNC0(nf) < 0) {
		FUNC16("%s", tempname);
		(void)FUNC11(tempname);
		nf = NULL;
		goto out;
	}
	nf = NULL;
	if ((edit = FUNC15(type == 'e' ? "EDITOR" : "VISUAL")) == NULL)
		edit = type == 'e' ? _PATH_EX : _PATH_VI;
	if (FUNC12(edit, 0, -1, -1, tempname, NULL) < 0) {
		(void)FUNC11(tempname);
		goto out;
	}
	/*
	 * If in read only mode or file unchanged, just remove the editor
	 * temporary and return.
	 */
	if (readonly) {
		(void)FUNC11(tempname);
		goto out;
	}
	if (FUNC14(tempname, &statb) < 0) {
		FUNC16("%s", tempname);
		goto out;
	}
	if (modtime == statb.st_mtime) {
		(void)FUNC11(tempname);
		goto out;
	}
	/*
	 * Now switch to new file.
	 */
	if ((nf = FUNC2(tempname, "a+")) == NULL) {
		FUNC16("%s", tempname);
		(void)FUNC11(tempname);
		goto out;
	}
	(void)FUNC11(tempname);
out:
	return (nf);
}