#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int ziplen; char* zipped; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cflag ; 
 scalar_t__ dflag ; 
 scalar_t__ errno ; 
 scalar_t__ fflag ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ rflag ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 int FUNC14 (char*) ; 
 TYPE_1__* suffixes ; 

__attribute__((used)) static void
FUNC15(char *path)
{
	char *opath = path, *s = NULL;
	ssize_t len;
	int slen;
	struct stat sb;

	/* check for stdout/stdin */
	if (path[0] == '-' && path[1] == '\0') {
		if (dflag)
			FUNC5();
		else
			FUNC6();
		return;
	}

retry:
	if (FUNC13(path, &sb) != 0 || (fflag == 0 && cflag == 0 &&
	    FUNC7(path, &sb) != 0)) {
		/* lets try <path>.gz if we're decompressing */
		if (dflag && s == NULL && errno == ENOENT) {
			len = FUNC14(path);
			slen = suffixes[0].ziplen;
			s = FUNC8(len + slen + 1);
			if (s == NULL)
				FUNC9("malloc");
			FUNC12(s, path, len);
			FUNC12(s + len, suffixes[0].zipped, slen + 1);
			path = s;
			goto retry;
		}
		FUNC10("can't stat: %s", opath);
		goto out;
	}

	if (FUNC0(sb.st_mode)) {
#ifndef SMALL
		if (rflag)
			FUNC3(path);
		else
#endif
			FUNC11("%s is a directory", path);
		goto out;
	}

	if (FUNC1(sb.st_mode))
		FUNC4(path, &sb);
	else
		FUNC11("%s is not a regular file", path);

out:
	if (s)
		FUNC2(s);
}