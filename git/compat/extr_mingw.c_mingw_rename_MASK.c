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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ EACCES ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FILE_ATTRIBUTE_READONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * delay ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*) ; 

int FUNC10(const char *pold, const char *pnew)
{
	DWORD attrs, gle;
	int tries = 0;
	wchar_t wpold[MAX_PATH], wpnew[MAX_PATH];
	if (FUNC9(wpold, pold) < 0 || FUNC9(wpnew, pnew) < 0)
		return -1;

	/*
	 * Try native rename() first to get errno right.
	 * It is based on MoveFile(), which cannot overwrite existing files.
	 */
	if (!FUNC6(wpold, wpnew))
		return 0;
	if (errno != EEXIST)
		return -1;
repeat:
	if (FUNC3(wpold, wpnew, MOVEFILE_REPLACE_EXISTING))
		return 0;
	/* TODO: translate more errors */
	gle = FUNC2();
	if (gle == ERROR_ACCESS_DENIED &&
	    (attrs = FUNC1(wpnew)) != INVALID_FILE_ATTRIBUTES) {
		if (attrs & FILE_ATTRIBUTE_DIRECTORY) {
			DWORD attrsold = FUNC1(wpold);
			if (attrsold == INVALID_FILE_ATTRIBUTES ||
			    !(attrsold & FILE_ATTRIBUTE_DIRECTORY))
				errno = EISDIR;
			else if (!FUNC7(wpnew))
				goto repeat;
			return -1;
		}
		if ((attrs & FILE_ATTRIBUTE_READONLY) &&
		    FUNC4(wpnew, attrs & ~FILE_ATTRIBUTE_READONLY)) {
			if (FUNC3(wpold, wpnew, MOVEFILE_REPLACE_EXISTING))
				return 0;
			gle = FUNC2();
			/* revert file attributes on failure */
			FUNC4(wpnew, attrs);
		}
	}
	if (tries < FUNC0(delay) && gle == ERROR_ACCESS_DENIED) {
		/*
		 * We assume that some other process had the source or
		 * destination file open at the wrong moment and retry.
		 * In order to give the other process a higher chance to
		 * complete its operation, we give up our time slice now.
		 * If we have to retry again, we do sleep a bit.
		 */
		FUNC5(delay[tries]);
		tries++;
		goto repeat;
	}
	if (gle == ERROR_ACCESS_DENIED &&
	       FUNC8("Rename from '%s' to '%s' failed. "
		       "Should I try again?", pold, pnew))
		goto repeat;

	errno = EACCES;
	return -1;
}