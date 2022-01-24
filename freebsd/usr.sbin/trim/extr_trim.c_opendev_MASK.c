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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static int
FUNC5(const char *path, int flags)
{
	int fd;
	char *tstr;

	if ((fd = FUNC4(path, flags)) < 0) {
		if (errno == ENOENT && path[0] != '/') {
			if (FUNC0(&tstr, "%d%s", _PATH_DEV, path) < 0)
				FUNC2(EX_OSERR, "no memory");
			fd = FUNC4(tstr, flags);
			FUNC3(tstr);
		}
	}

	if (fd < 0)
		FUNC1(EX_NOINPUT, "open failed: %s", path);

	return (fd);
}