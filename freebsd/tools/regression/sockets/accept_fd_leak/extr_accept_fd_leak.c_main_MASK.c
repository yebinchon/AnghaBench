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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 void* AF_INET ; 
 int BIND_ATTEMPTS ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EFAULT ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int LOOPS ; 
 int FUNC0 (int,int) ; 
 int NUM_ATTEMPTS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  child_died ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,struct sockaddr*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC13 () ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  quit ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 scalar_t__ FUNC24 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

int
FUNC27(void)
{
	struct sockaddr_in sin;
	socklen_t size;
	pid_t child;
	int fd1, fd2, fd3, i, listen_port, s, status;

	FUNC17("1..2\n");

	/*
	 * Check for sequential fd allocation, and give up early if not.
	 */
	fd1 = FUNC9(STDIN_FILENO);
	fd2 = FUNC9(STDIN_FILENO);
	if (fd2 != fd1 + 1)
		FUNC10(-1, "Non-sequential fd allocation\n");

	s = FUNC20(PF_INET, SOCK_STREAM, 0);
	if (s == -1)
		FUNC10(-1, "socket: %s", FUNC22(errno));

	FUNC6(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC14(INADDR_LOOPBACK);

	FUNC21();

	for (i = 0; i < BIND_ATTEMPTS; i++) {
		/* Pick a random unprivileged port 1025-65535 */
		listen_port = FUNC0((int)FUNC18() % 65535, 1025);
		sin.sin_port = FUNC15(listen_port);
		if (FUNC5(s, (struct sockaddr *)&sin, sizeof(sin)) == 0)
			break;
		FUNC25("bind with %d failed", listen_port);
		FUNC23(1000);
	}
	if (i >= BIND_ATTEMPTS) {
		FUNC17("Bail out!\n");
		FUNC11(1);
	}

	if (FUNC16(s, -1) != 0)
		FUNC10(-1, "listen: %s", FUNC22(errno));

	i = FUNC12(s, F_GETFL);
	if (i == -1)
		FUNC10(-1, "ioctl(F_GETFL): %s", FUNC22(errno));
	i |= O_NONBLOCK;
	if (FUNC12(s, F_SETFL, i) != 0)
		FUNC10(-1, "ioctl(F_SETFL): %s", FUNC22(errno));
	i = FUNC12(s, F_GETFL);
	if (i == -1)
		FUNC10(-1, "ioctl(F_GETFL): %s", FUNC22(errno));
	if ((i & O_NONBLOCK) != O_NONBLOCK)
		FUNC10(-1, "Failed to set O_NONBLOCK (i=0x%x)\n", i);

	for (i = 0; i < LOOPS; i++) {
		size = sizeof(sin);
		if (FUNC4(s, (struct sockaddr *)&sin, &size) != -1)
			FUNC10(-1, "accept succeeded\n");
		if (errno != EAGAIN)
			FUNC10(-1, "accept: %s", FUNC22(errno));
	}

	/*
	 * Allocate a file descriptor and make sure it's fd2+2.  2 because
	 * we allocate an fd for the socket.
	 */
	fd3 = FUNC9(STDIN_FILENO);
	if (fd3 != fd2 + 2)
		FUNC17("not ok 1 - (%d, %d, %d)\n", fd1, fd2, fd3);
	else
		FUNC17("ok 1\n");

	/*
	 * Try failing accept's w/o non-blocking where the destination
	 * address pointer is invalid.
	 */
	FUNC7(fd3);
	FUNC19(SIGCHLD, child_died);
	child = FUNC13();
	if (child < 0)
		FUNC10(-1, "fork: %s", FUNC22(errno));

	/*
	 * Child process does `NUM_ATTEMPTS` connects.
	 */
	if (child == 0) {
		FUNC7(fd1);
		FUNC7(fd2);
		FUNC7(s);

		FUNC6(&sin, sizeof(sin));
		sin.sin_len = sizeof(sin);
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = FUNC14(INADDR_LOOPBACK);
		sin.sin_port = FUNC15(listen_port);

		for (i = 0; i < NUM_ATTEMPTS; i++) {
			s = FUNC20(PF_INET, SOCK_STREAM, 0);
			if (s == -1)
				FUNC10(-1, "socket: %s", FUNC22(errno));
			if (FUNC8(s, (struct sockaddr *)&sin,
			    sizeof(sin)) < 0)
				FUNC10(-1, "connect: %s", FUNC22(errno));
			FUNC7(s);
		}
		FUNC3(0);
	}

	/* Reset back to a blocking socket. */
	i = FUNC12(s, F_GETFL);
	if (i == -1)
		FUNC10(-1, "ioctl(F_GETFL): %s", FUNC22(errno));
	i &= ~O_NONBLOCK;
	if (FUNC12(s, F_SETFL, i) != 0)
		FUNC10(-1, "ioctl(F_SETFL): %s", FUNC22(errno));
	i = FUNC12(s, F_GETFL);
	if (i == -1)
		FUNC10(-1, "ioctl(F_GETFL): %s", FUNC22(errno));
	if (i & O_NONBLOCK)
		FUNC10(-1, "Failed to clear O_NONBLOCK (i=0x%x)\n", i);

	/* Do `NUM_ATTEMPTS` accepts with an invalid pointer. */
	for (i = 0; !quit && i < NUM_ATTEMPTS; i++) {
		size = sizeof(sin);
		if (FUNC4(s, (struct sockaddr *)(uintptr_t)(0x100),
		    &size) != -1)
			FUNC10(-1, "accept succeeded\n");
		if (errno != EFAULT)
			FUNC10(-1, "accept: %s", FUNC22(errno));
	}

	if (FUNC24(child, &status, 0) < 0)
		FUNC10(-1, "waitpid: %s", FUNC22(errno));
	if (!FUNC2(status) || FUNC1(status) != 0)
		FUNC26("child process died");

	/*
	 * Allocate a file descriptor and make sure it's fd2+2.  2 because
	 * we allocate an fd for the socket.
	 */
	fd3 = FUNC9(STDIN_FILENO);
	if (fd3 != fd2 + 2)
		FUNC17("not ok 2 - (%d, %d, %d)\n", fd1, fd2, fd3);
	else
		FUNC17("ok 2\n");

	return (0);
}