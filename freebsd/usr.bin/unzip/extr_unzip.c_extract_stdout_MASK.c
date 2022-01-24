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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 scalar_t__ c_opt ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(struct archive *a, struct archive_entry *e)
{
	char *pathname;
	mode_t filetype;

	pathname = FUNC11(FUNC6(e));
	filetype = FUNC5(e);

	/* I don't think this can happen in a zipfile.. */
	if (!FUNC0(filetype) && !FUNC2(filetype) && !FUNC1(filetype)) {
		FUNC12("skipping non-regular entry '%s'", pathname);
		FUNC3(FUNC7(a));
		FUNC9(pathname);
		return;
	}

	/* skip directories in -j case */
	if (FUNC0(filetype)) {
		FUNC3(FUNC7(a));
		FUNC9(pathname);
		return;
	}

	/* apply include / exclude patterns */
	if (!FUNC4(pathname)) {
		FUNC3(FUNC7(a));
		FUNC9(pathname);
		return;
	}

	if (c_opt)
		FUNC10("x %s\n", pathname);

	(void)FUNC8(a, pathname, STDOUT_FILENO);

	FUNC9(pathname);
}