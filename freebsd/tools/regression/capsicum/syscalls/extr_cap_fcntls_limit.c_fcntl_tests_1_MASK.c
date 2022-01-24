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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CAP_FCNTL ; 
 scalar_t__ CAP_FCNTL_ALL ; 
 scalar_t__ CAP_FCNTL_GETFL ; 
 scalar_t__ CAP_FCNTL_SETFL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ENOTCAPABLE ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 scalar_t__ FUNC2 (int,scalar_t__*) ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC6 (int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7(int fd)
{
	uint32_t fcntlrights;
	cap_rights_t rights;

	FUNC1(FUNC3(fd, CAP_FCNTL_GETFL) == 0);
	fcntlrights = 0;
	FUNC1(FUNC2(fd, &fcntlrights) == 0);
	FUNC1(fcntlrights == CAP_FCNTL_GETFL);

	FUNC0(&rights);
	FUNC4(&rights, CAP_FCNTL);
	FUNC1(FUNC5(fd, &rights) == 0);

	fcntlrights = CAP_FCNTL_ALL;
	FUNC1(FUNC2(fd, &fcntlrights) == 0);
	FUNC1(fcntlrights == 0);

	errno = 0;
	FUNC1(FUNC3(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == -1);
	FUNC1(errno == ENOTCAPABLE);
	fcntlrights = CAP_FCNTL_ALL;
	FUNC1(FUNC2(fd, &fcntlrights) == 0);
	FUNC1(fcntlrights == 0);
	errno = 0;
	FUNC1(FUNC3(fd, CAP_FCNTL_GETFL) == -1);
	FUNC1(errno == ENOTCAPABLE);
	fcntlrights = CAP_FCNTL_ALL;
	FUNC1(FUNC2(fd, &fcntlrights) == 0);
	FUNC1(fcntlrights == 0);

	FUNC1(FUNC6(fd, F_GETFD) == 0);
	FUNC1(FUNC6(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC1(FUNC6(fd, F_GETFD) == FD_CLOEXEC);
	FUNC1(FUNC6(fd, F_SETFD, 0) == 0);
	FUNC1(FUNC6(fd, F_GETFD) == 0);

	errno = 0;
	FUNC1(FUNC6(fd, F_GETFL) == -1);
	FUNC1(errno == ENOTCAPABLE);
	errno = 0;
	FUNC1(FUNC6(fd, F_SETFL, O_NONBLOCK) == -1);
	FUNC1(errno == ENOTCAPABLE);
	errno = 0;
	FUNC1(FUNC6(fd, F_SETFL, 0) == -1);
	FUNC1(errno == ENOTCAPABLE);
	errno = 0;
	FUNC1(FUNC6(fd, F_GETFL) == -1);
	FUNC1(errno == ENOTCAPABLE);
}