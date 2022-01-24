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
 scalar_t__ PORT1 ; 
 scalar_t__ PORT2 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

int
FUNC9(void)
{
	int fd[2];

	FUNC4("udp_0send", fd, PORT1, PORT2);
	FUNC7("udp_0send", fd[0]);
	FUNC0(fd);

	FUNC4("udp_0write", fd, PORT1 + 10, PORT2 + 10);
	FUNC8("udp_0write", fd[0]);
	FUNC0(fd);

	FUNC3("tcp_0send", fd, PORT1);
	FUNC7("tcp_0send", fd[0]);
	FUNC0(fd);

	FUNC3("tcp_0write", fd, PORT1 + 10);
	FUNC8("tcp_0write", fd[0]);
	FUNC0(fd);

	FUNC6("udsstream_0send", fd);
	FUNC7("udsstream_0send", fd[0]);
	FUNC0(fd);

	FUNC6("udsstream_0write", fd);
	FUNC8("udsstream_0write", fd[0]);
	FUNC0(fd);

	FUNC5("udsdgram_0send", fd);
	FUNC7("udsdgram_0send", fd[0]);
	FUNC0(fd);

	FUNC5("udsdgram_0write", fd);
	FUNC8("udsdgram_0write", fd[0]);
	FUNC0(fd);

	FUNC2("pipe_0write", fd);
	FUNC8("pipd_0write", fd[0]);
	FUNC0(fd);

	FUNC1("fifo_0write", fd);
	FUNC8("fifo_0write", fd[0]);
	FUNC0(fd);

	return (0);
}