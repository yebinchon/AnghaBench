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
struct TYPE_2__ {void* s_addr; } ;
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
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int,struct sockaddr*,int*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 

int
FUNC18(int argc, char *argv[])
{
	struct sockaddr_in sin;
	pid_t child_pid, parent_pid;
	int listen_fd;
	socklen_t len;
	u_short port;

	if (FUNC13(SIGCHLD, SIG_IGN) == SIG_ERR)
		FUNC3(-1, "signal");

	/*
	 * Run the whole thing twice: once, with a short sleep in the client,
	 * so that we close before time wait runs out, and once with a long
	 * sleep so that the time wait terminates while the socket is open.
	 * We don't reuse listen sockets between runs.
	 */
	listen_fd = FUNC15(PF_INET, SOCK_STREAM, 0);
	if (listen_fd < 0)
		FUNC3(-1, "socket");

	/*
	 * We use the loopback, but let the kernel select a port for the
	 * server socket.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC8(INADDR_LOOPBACK);

	if (FUNC0(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC3(-1, "bind");

	if (FUNC10(listen_fd, -1) < 0)
		FUNC3(-1, "listen");

	/*
	 * Query the port so that the client can use it.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	len = sizeof(sin);
	if (FUNC7(listen_fd, (struct sockaddr *)&sin, &len) < 0)
		FUNC3(-1, "getsockname");
	port = sin.sin_port;
	FUNC12("Using port %d\n", FUNC11(port));

	parent_pid = FUNC6();
	child_pid = FUNC5();
	if (child_pid < 0)
		FUNC3(-1, "fork");
	if (child_pid == 0) {
		child_pid = FUNC6();
		FUNC17(child_pid, listen_fd);
		FUNC4(0);
	} else
		FUNC16(parent_pid, port, 1);
	(void)FUNC9(child_pid, SIGTERM);
	FUNC2(listen_fd);
	FUNC14(5);

	/*
	 * Start again, this time long sleep.
	 */
	listen_fd = FUNC15(PF_INET, SOCK_STREAM, 0);
	if (listen_fd < 0)
		FUNC3(-1, "socket");

	/*
	 * We use the loopback, but let the kernel select a port for the
	 * server socket.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC8(INADDR_LOOPBACK);

	if (FUNC0(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC3(-1, "bind");

	if (FUNC10(listen_fd, -1) < 0)
		FUNC3(-1, "listen");

	/*
	 * Query the port so that the client can use it.
	 */
	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	len = sizeof(sin);
	if (FUNC7(listen_fd, (struct sockaddr *)&sin, &len) < 0)
		FUNC3(-1, "getsockname");
	port = sin.sin_port;
	FUNC12("Using port %d\n", FUNC11(port));

	parent_pid = FUNC6();
	child_pid = FUNC5();
	if (child_pid < 0)
		FUNC3(-1, "fork");
	if (child_pid == 0) {
		child_pid = FUNC6();
		FUNC17(parent_pid, listen_fd);
	} else
		FUNC16(child_pid, port, 800);

	return (0);
}