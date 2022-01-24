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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *path, const char *pkgpath, bool force)
{
	int pstat;
	pid_t pid;

	switch ((pid = FUNC5())) {
	case -1:
		return (-1);
	case 0:
		if (force)
			FUNC4(path, "pkg-static", "add", "-f", pkgpath,
			    (char *)NULL);
		else
			FUNC4(path, "pkg-static", "add", pkgpath,
			    (char *)NULL);
		FUNC3(1);
	default:
		break;
	}

	while (FUNC6(pid, &pstat, 0) == -1)
		if (errno != EINTR)
			return (-1);

	if (FUNC0(pstat))
		return (FUNC0(pstat));
	else if (FUNC1(pstat))
		return (128 & (FUNC2(pstat)));
	return (pstat);
}