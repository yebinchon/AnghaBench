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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin_local ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EPIPE ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sockaddr_in*,struct sockaddr_in*) ; 

__attribute__((used)) static void
FUNC12(pid_t partner, u_short port)
{
	struct sockaddr_in sin, sin_local;
	int error, sock;
	socklen_t slen;
	ssize_t len;
	char ch;

	FUNC9(1);

	sock = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "socket");
	}

	FUNC0(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);
	sin.sin_port = port;

	if (FUNC2(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "connect");
	}

	slen = sizeof(sin_local);
	if (FUNC5(sock, (struct sockaddr *)&sin_local, &slen) < 0) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "getsockname");
	}

	/*
	 * Send one byte, make sure that worked, wait for the drop, and try
	 * sending another.  By sending small amounts, we avoid blocking
	 * waiting on the remote buffer to be drained.
	 */
	ch = 'A';
	len = FUNC8(sock, &ch, sizeof(ch), MSG_NOSIGNAL);
	if (len < 0) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "tcp_client: send (1)");
	}
	if (len != sizeof(ch)) {
		(void)FUNC6(partner, SIGTERM);
		FUNC4(-1, "tcp_client: send (1) len");
	}

	FUNC9(5);
	if (FUNC11(&sin_local, &sin) < 0) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "tcp_client: tcp_drop");
	}
	FUNC9(5);

	ch = 'A';
	len = FUNC8(sock, &ch, sizeof(ch), MSG_NOSIGNAL);
	if (len >= 0) {
		(void)FUNC6(partner, SIGTERM);
		FUNC4(-1, "tcp_client: send (2): success");
	} else if (errno != EPIPE) {
		error = errno;
		(void)FUNC6(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "tcp_client: send (2)");
	}
	FUNC1(sock);
}