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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ENOTCAPABLE ; 
 scalar_t__ FD_CLOEXEC ; 
 unsigned long FIOCLEX ; 
 unsigned long FIONCLEX ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int FUNC2 (int,unsigned long*,int) ; 
 int FUNC3 (int,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (int,unsigned long) ; 
 int FUNC8 (unsigned long*) ; 

__attribute__((used)) static void
FUNC9(int fd)
{
	unsigned long cmds[2];
	cap_rights_t rights;

	cmds[0] = FIOCLEX;
	FUNC1(FUNC3(fd, cmds, 1) == 0);
	cmds[0] = cmds[1] = 0;
	FUNC1(FUNC2(fd, cmds, FUNC8(cmds)) == 1);
	FUNC1(cmds[0] == FIOCLEX);
	FUNC1(cmds[1] == 0);

	FUNC0(&rights);
	FUNC4(&rights, CAP_IOCTL);

	FUNC1(FUNC5(fd, &rights) == 0);
	FUNC1(FUNC2(fd, cmds, FUNC8(cmds)) == 0);

	cmds[0] = FIOCLEX;
	cmds[1] = FIONCLEX;
	errno = 0;
	FUNC1(FUNC3(fd, cmds, FUNC8(cmds)) == -1);
	FUNC1(errno == ENOTCAPABLE);
	FUNC1(FUNC2(fd, cmds, FUNC8(cmds)) == 0);
	cmds[0] = FIOCLEX;
	errno = 0;
	FUNC1(FUNC3(fd, cmds, 1) == -1);
	FUNC1(errno == ENOTCAPABLE);
	FUNC1(FUNC2(fd, cmds, FUNC8(cmds)) == 0);

	FUNC1(FUNC6(fd, F_GETFD) == 0);
	errno = 0;
	FUNC1(FUNC7(fd, FIOCLEX) == -1);
	FUNC1(errno == ENOTCAPABLE);
	FUNC1(FUNC6(fd, F_GETFD) == 0);
	FUNC1(FUNC6(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC1(FUNC6(fd, F_GETFD) == FD_CLOEXEC);
	errno = 0;
	FUNC1(FUNC7(fd, FIONCLEX) == -1);
	FUNC1(errno == ENOTCAPABLE);
	FUNC1(FUNC6(fd, F_GETFD) == FD_CLOEXEC);
	FUNC1(FUNC6(fd, F_SETFD, 0) == 0);
	FUNC1(FUNC6(fd, F_GETFD) == 0);
}