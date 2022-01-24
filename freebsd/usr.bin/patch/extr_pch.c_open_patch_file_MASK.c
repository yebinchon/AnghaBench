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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 char const* TMPPATNAME ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  buf_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  p_filesize ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/ * pfp ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

void
FUNC11(const char *filename)
{
	struct stat filestat;
	int nr, nw;

	if (filename == NULL || *filename == '\0' || FUNC10(filename, "-")) {
		pfp = FUNC3(TMPPATNAME, "w");
		if (pfp == NULL)
			FUNC8("can't create %s", TMPPATNAME);
		while ((nr = FUNC4(buf, 1, buf_size, stdin)) > 0) {
			nw = FUNC6(buf, 1, nr, pfp);
			if (nr != nw)
				FUNC8("write error to %s", TMPPATNAME);
		}
		if (FUNC1(pfp) || FUNC0(pfp))
			FUNC8("can't write %s", TMPPATNAME);
		filename = TMPPATNAME;
	}
	pfp = FUNC3(filename, "r");
	if (pfp == NULL)
		FUNC8("patch file %s not found", filename);
	if (FUNC5(FUNC2(pfp), &filestat))
		FUNC8("can't stat %s", filename);
	p_filesize = filestat.st_size;
	FUNC7(0, 1L);	/* start at the beginning */
	FUNC9();
}