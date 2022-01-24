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
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  abspath ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  dirfd ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	char cwd[MAXPATHLEN];

	FUNC0(FUNC2(cwd, sizeof(cwd)) != NULL);
	FUNC1(&abspath, "%s/testdir/d1/f1", cwd);

	FUNC0(FUNC3("testdir", 0777) == 0);
	FUNC0((dirfd = FUNC5("testdir", O_RDONLY)) >= 0);

	FUNC0(FUNC4(dirfd, "d1", 0777) == 0);
	FUNC0(FUNC4(dirfd, "d1/d2", 0777) == 0);
	FUNC0(FUNC4(dirfd, "d1/d2/d3", 0777) == 0);
	FUNC7(dirfd, "d1/f1");
	FUNC7(dirfd, "d1/d2/f2");
	FUNC7(dirfd, "d1/d2/d3/f3");
	FUNC0(FUNC6("d1/d2/d3", dirfd, "l3") == 0);
	FUNC0(FUNC6("../testdir/d1", dirfd, "lup") == 0);
	FUNC0(FUNC6("../..", dirfd, "d1/d2/d3/ld1") == 0);
	FUNC0(FUNC6("../../f1", dirfd, "d1/d2/d3/lf1") == 0);
}