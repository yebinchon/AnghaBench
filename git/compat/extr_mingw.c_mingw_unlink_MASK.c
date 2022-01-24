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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/ * delay ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 

int FUNC8(const char *pathname)
{
	int ret, tries = 0;
	wchar_t wpathname[MAX_PATH];
	if (FUNC7(wpathname, pathname) < 0)
		return -1;

	/* read-only files cannot be removed */
	FUNC3(wpathname, 0666);
	while ((ret = FUNC4(wpathname)) == -1 && tries < FUNC0(delay)) {
		if (!FUNC6(FUNC1()))
			break;
		/*
		 * We assume that some other process had the source or
		 * destination file open at the wrong moment and retry.
		 * In order to give the other process a higher chance to
		 * complete its operation, we give up our time slice now.
		 * If we have to retry again, we do sleep a bit.
		 */
		FUNC2(delay[tries]);
		tries++;
	}
	while (ret == -1 && FUNC6(FUNC1()) &&
	       FUNC5("Unlink of file '%s' failed. "
			"Should I try again?", pathname))
	       ret = FUNC4(wpathname);
	return ret;
}