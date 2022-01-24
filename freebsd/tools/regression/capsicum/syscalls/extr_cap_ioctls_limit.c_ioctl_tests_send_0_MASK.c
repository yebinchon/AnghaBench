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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FIOCLEX ; 
 unsigned long FIONCLEX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (int,unsigned long*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (unsigned long*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int sock)
{
	unsigned long cmds[2];
	int fd;

	FUNC0((fd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	cmds[0] = FIOCLEX;
	cmds[1] = FIONCLEX;
	FUNC0(FUNC1(fd, cmds, FUNC4(cmds)) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	cmds[0] = FIOCLEX;
	FUNC0(FUNC1(fd, cmds, 1) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);

	FUNC0((fd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0(FUNC1(fd, NULL, 0) == 0);
	FUNC0(FUNC3(sock, fd) == 0);
	FUNC0(FUNC2(fd) == 0);
}