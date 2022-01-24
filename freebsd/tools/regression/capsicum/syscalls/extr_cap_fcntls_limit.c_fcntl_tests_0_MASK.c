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
typedef  int uint32_t ;

/* Variables and functions */
 int CAP_FCNTL_ALL ; 
 int CAP_FCNTL_GETFL ; 
 int CAP_FCNTL_SETFL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTCAPABLE ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 scalar_t__ FUNC1 (int,int*) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC4(int fd)
{
	uint32_t fcntlrights;

	fcntlrights = 0;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == CAP_FCNTL_ALL);

	FUNC0(FUNC3(fd, F_GETFD) == 0);
	FUNC0(FUNC3(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC3(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == 0);

	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);
	FUNC0(FUNC3(fd, F_SETFL, O_NONBLOCK) == 0);
	FUNC0(FUNC3(fd, F_GETFL) == (O_RDWR | O_NONBLOCK));
	FUNC0(FUNC3(fd, F_SETFL, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);

	errno = 0;
	FUNC0(FUNC2(fd, ~CAP_FCNTL_ALL) == -1);
	FUNC0(errno == EINVAL);
	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == 0);
	fcntlrights = 0;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == (CAP_FCNTL_GETFL | CAP_FCNTL_SETFL));
	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == 0);
	fcntlrights = 0;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == (CAP_FCNTL_GETFL | CAP_FCNTL_SETFL));

	FUNC0(FUNC3(fd, F_GETFD) == 0);
	FUNC0(FUNC3(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC3(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == 0);

	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);
	FUNC0(FUNC3(fd, F_SETFL, O_NONBLOCK) == 0);
	FUNC0(FUNC3(fd, F_GETFL) == (O_RDWR | O_NONBLOCK));
	FUNC0(FUNC3(fd, F_SETFL, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);

	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL) == 0);
	fcntlrights = 0;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == CAP_FCNTL_GETFL);
	errno = 0;
	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == -1);
	FUNC0(errno == ENOTCAPABLE);
	fcntlrights = 0;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == CAP_FCNTL_GETFL);

	FUNC0(FUNC3(fd, F_GETFD) == 0);
	FUNC0(FUNC3(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC3(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == 0);

	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);
	errno = 0;
	FUNC0(FUNC3(fd, F_SETFL, O_NONBLOCK) == -1);
	FUNC0(errno == ENOTCAPABLE);
	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);
	errno = 0;
	FUNC0(FUNC3(fd, F_SETFL, 0) == -1);
	FUNC0(errno == ENOTCAPABLE);
	FUNC0(FUNC3(fd, F_GETFL) == O_RDWR);

	FUNC0(FUNC2(fd, 0) == 0);
	fcntlrights = CAP_FCNTL_ALL;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == 0);
	errno = 0;
	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == -1);
	FUNC0(errno == ENOTCAPABLE);
	fcntlrights = CAP_FCNTL_ALL;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == 0);
	errno = 0;
	FUNC0(FUNC2(fd, CAP_FCNTL_GETFL) == -1);
	FUNC0(errno == ENOTCAPABLE);
	fcntlrights = CAP_FCNTL_ALL;
	FUNC0(FUNC1(fd, &fcntlrights) == 0);
	FUNC0(fcntlrights == 0);

	FUNC0(FUNC3(fd, F_GETFD) == 0);
	FUNC0(FUNC3(fd, F_SETFD, FD_CLOEXEC) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == FD_CLOEXEC);
	FUNC0(FUNC3(fd, F_SETFD, 0) == 0);
	FUNC0(FUNC3(fd, F_GETFD) == 0);

	errno = 0;
	FUNC0(FUNC3(fd, F_GETFL) == -1);
	FUNC0(errno == ENOTCAPABLE);
	errno = 0;
	FUNC0(FUNC3(fd, F_SETFL, O_NONBLOCK) == -1);
	FUNC0(errno == ENOTCAPABLE);
	errno = 0;
	FUNC0(FUNC3(fd, F_SETFL, 0) == -1);
	FUNC0(errno == ENOTCAPABLE);
	errno = 0;
	FUNC0(FUNC3(fd, F_GETFL) == -1);
	FUNC0(errno == ENOTCAPABLE);
}