#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; void* sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGCHLD ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 

int
FUNC14(int argc, char *argv[])
{
	pid_t child_pid, parent_pid;
	struct sockaddr_in sin;
	int listen_fd;
	u_short port;
	socklen_t len;

	listen_fd = FUNC11(PF_INET, SOCK_STREAM, 0);
	if (listen_fd < 0)
		FUNC2(-1, "socket");

	/*
	 * We use the loopback, but let the kernel select a port for the
	 * server socket.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);

	if (FUNC0(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC2(-1, "bind");

	if (FUNC7(listen_fd, -1) < 0)
		FUNC2(-1, "listen");

	/*
	 * Query the port so that the client can use it.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	len = sizeof(sin);
	if (FUNC5(listen_fd, (struct sockaddr *)&sin, &len) < 0)
		FUNC2(-1, "getsockname");
	port = sin.sin_port;
	FUNC9("Using port %d\n", FUNC8(port));

	if (FUNC10(SIGCHLD, SIG_IGN) == SIG_ERR)
		FUNC2(-1, "signal");

	parent_pid = FUNC4();
	child_pid = FUNC3();
	if (child_pid < 0)
		FUNC2(-1, "fork");
	if (child_pid == 0) {
		child_pid = FUNC4();
		FUNC13(parent_pid, listen_fd);
	} else
		FUNC12(child_pid, port);

	return (0);
}