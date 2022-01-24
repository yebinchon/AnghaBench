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
 int CAP_IOCTLS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOTCAPABLE ; 
 scalar_t__ FD_CLOEXEC ; 
 unsigned long FIOCLEX ; 
 unsigned long FIONCLEX ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int FUNC1 (int,unsigned long*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (int,unsigned long) ; 
 int FUNC6 (unsigned long*) ; 

__attribute__((used)) static void
FUNC7(int sock)
{
	unsigned long cmds[2];
	int fd;

	FUNC0(FUNC3(sock, &fd) == 0);

	FUNC0(FUNC1(fd, NULL, 0) == CAP_IOCTLS_ALL);

	FUNC0(FUNC4(fd, F_GETFD) == 0);
	FUNC0(FUNC5(fd, FIOCLEX) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC5(fd, FIONCLEX) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == 0);

	FUNC0(FUNC2(fd) == 0);

	FUNC0(FUNC3(sock, &fd) == 0);

	cmds[0] = cmds[1] = 0;
	FUNC0(FUNC1(fd, cmds, FUNC6(cmds)) == FUNC6(cmds));
	FUNC0((cmds[0] == FIOCLEX && cmds[1] == FIONCLEX) ||
	    (cmds[0] == FIONCLEX && cmds[1] == FIOCLEX));

	FUNC0(FUNC4(fd, F_GETFD) == 0);
	FUNC0(FUNC5(fd, FIOCLEX) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC5(fd, FIONCLEX) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == 0);

	FUNC0(FUNC2(fd) == 0);

	FUNC0(FUNC3(sock, &fd) == 0);

	cmds[0] = cmds[1] = 0;
	FUNC0(FUNC1(fd, cmds, FUNC6(cmds)) == 1);
	FUNC0(cmds[0] == FIOCLEX);

	FUNC0(FUNC4(fd, F_GETFD) == 0);
	FUNC0(FUNC5(fd, FIOCLEX) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	errno = 0;
	FUNC0(FUNC5(fd, FIONCLEX) == -1);
	FUNC0(errno == ENOTCAPABLE);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC4(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == 0);

	FUNC0(FUNC2(fd) == 0);

	FUNC0(FUNC3(sock, &fd) == 0);

	FUNC0(FUNC1(fd, cmds, FUNC6(cmds)) == 0);

	FUNC0(FUNC4(fd, F_GETFD) == 0);
	errno = 0;
	FUNC0(FUNC5(fd, FIOCLEX) == -1);
	FUNC0(errno == ENOTCAPABLE);
	FUNC0(FUNC4(fd, F_GETFD) == 0);
	FUNC0(FUNC4(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	errno = 0;
	FUNC0(FUNC5(fd, FIONCLEX) == -1);
	FUNC0(errno == ENOTCAPABLE);
	FUNC0(FUNC4(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC4(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC4(fd, F_GETFD) == 0);

	FUNC0(FUNC2(fd) == 0);
}