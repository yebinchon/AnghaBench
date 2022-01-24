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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(pid_t partner, int listen_fd)
{
	int error, accept_fd;
	ssize_t len;
	char ch;

	accept_fd = FUNC0(listen_fd, NULL, NULL);
	if (accept_fd < 0) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC2(-1, "tcp_server: accept");
	}

	/*
	 * Send one byte, make sure that worked, wait for the drop, and try
	 * sending another.  By sending small amounts, we avoid blocking
	 * waiting on the remote buffer to be drained.
	 */
	ch = 'A';
	len = FUNC5(accept_fd, &ch, sizeof(ch), MSG_NOSIGNAL);
	if (len < 0) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC2(-1, "tcp_server: send (1)");
	}
	if (len != sizeof(ch)) {
		(void)FUNC4(partner, SIGTERM);
		FUNC3(-1, "tcp_server: send (1) len");
	}

	FUNC6 (10);

	ch = 'A';
	len = FUNC5(accept_fd, &ch, sizeof(ch), MSG_NOSIGNAL);
	if (len >= 0) {
		(void)FUNC4(partner, SIGTERM);
		FUNC3(-1, "tcp_server: send (2): success");
	} else if (errno != EPIPE) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC2(-1, "tcp_server: send (2)");
	}

	FUNC1(accept_fd);
	FUNC1(listen_fd);
}