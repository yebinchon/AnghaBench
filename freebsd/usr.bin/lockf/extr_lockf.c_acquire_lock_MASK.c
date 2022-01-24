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
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_CANTCREAT ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int O_CREAT ; 
 int O_EXLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int FUNC1 (char const*,int,int) ; 

__attribute__((used)) static int
FUNC2(const char *name, int flags)
{
	int fd;

	if ((fd = FUNC1(name, O_RDONLY|O_EXLOCK|flags, 0666)) == -1) {
		if (errno == EAGAIN || errno == EINTR)
			return (-1);
		else if (errno == ENOENT && (flags & O_CREAT) == 0)
			FUNC0(EX_UNAVAILABLE, "%s", name);
		FUNC0(EX_CANTCREAT, "cannot open %s", name);
	}
	return (fd);
}