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
 int /*<<< orphan*/  AF_UNIX ; 
 int CAP_FCNTL_GETFL ; 
 int CAP_FCNTL_SETFL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int sock)
{
	int fd;

	FUNC0((fd = FUNC4(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC4(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC1(fd, CAP_FCNTL_GETFL | CAP_FCNTL_SETFL) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC4(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC1(fd, CAP_FCNTL_GETFL) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC4(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC1(fd, 0) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);
}