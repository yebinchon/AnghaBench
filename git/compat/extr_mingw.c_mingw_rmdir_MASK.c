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
 scalar_t__ EACCES ; 
 scalar_t__ ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/ * delay ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 

int FUNC9(const char *pathname)
{
	int ret, tries = 0;
	wchar_t wpathname[MAX_PATH];
	if (FUNC8(wpathname, pathname) < 0)
		return -1;

	while ((ret = FUNC3(wpathname)) == -1 && tries < FUNC0(delay)) {
		if (!FUNC7(FUNC1()))
			errno = FUNC5(FUNC1());
		if (errno != EACCES)
			break;
		if (!FUNC6(wpathname)) {
			errno = ENOTEMPTY;
			break;
		}
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
	while (ret == -1 && errno == EACCES && FUNC7(FUNC1()) &&
	       FUNC4("Deletion of directory '%s' failed. "
			"Should I try again?", pathname))
	       ret = FUNC3(wpathname);
	return ret;
}