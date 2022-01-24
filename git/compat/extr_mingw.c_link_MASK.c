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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 

int FUNC4(const char *oldpath, const char *newpath)
{
	wchar_t woldpath[MAX_PATH], wnewpath[MAX_PATH];
	if (FUNC3(woldpath, oldpath) < 0 ||
		FUNC3(wnewpath, newpath) < 0)
		return -1;

	if (!FUNC0(wnewpath, woldpath, NULL)) {
		errno = FUNC2(FUNC1());
		return -1;
	}
	return 0;
}