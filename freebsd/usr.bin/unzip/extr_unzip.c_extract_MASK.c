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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  d_arg ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry*,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ j_opt ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

__attribute__((used)) static void
FUNC17(struct archive *a, struct archive_entry *e)
{
	char *pathname, *realpathname;
	mode_t filetype;
	char *p, *q;

	pathname = FUNC13(FUNC6(e));
	filetype = FUNC5(e);

	/* sanity checks */
	if (pathname[0] == '/' ||
	    FUNC14(pathname, "../", 3) == 0 ||
	    FUNC15(pathname, "/../") != NULL) {
		FUNC16("skipping insecure entry '%s'", pathname);
		FUNC3(FUNC7(a));
		FUNC10(pathname);
		return;
	}

	/* I don't think this can happen in a zipfile.. */
	if (!FUNC0(filetype) && !FUNC2(filetype) && !FUNC1(filetype)) {
		FUNC16("skipping non-regular entry '%s'", pathname);
		FUNC3(FUNC7(a));
		FUNC10(pathname);
		return;
	}

	/* skip directories in -j case */
	if (FUNC0(filetype) && j_opt) {
		FUNC3(FUNC7(a));
		FUNC10(pathname);
		return;
	}

	/* apply include / exclude patterns */
	if (!FUNC4(pathname)) {
		FUNC3(FUNC7(a));
		FUNC10(pathname);
		return;
	}

	/* apply -j and -d */
	if (j_opt) {
		for (p = q = pathname; *p; ++p)
			if (*p == '/')
				q = p + 1;
		realpathname = FUNC12(d_arg, q);
	} else {
		realpathname = FUNC12(d_arg, pathname);
	}

	/* ensure that parent directory exists */
	FUNC11(realpathname);

	if (FUNC0(filetype))
		FUNC8(a, e, realpathname);
	else
		FUNC9(a, e, &realpathname);

	FUNC10(realpathname);
	FUNC10(pathname);
}