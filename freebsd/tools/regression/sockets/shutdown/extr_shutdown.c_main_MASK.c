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
typedef  scalar_t__ u_short ;
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sock ;

/* Variables and functions */
 void* AF_INET ; 
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 scalar_t__ SHUT_RD ; 
 scalar_t__ SHUT_RDWR ; 
 scalar_t__ SHUT_WR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int FUNC9 (int,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int
FUNC12(void)
{
	struct sockaddr_in sock;
	socklen_t len;
	int listen_sock, connect_sock;
	u_short port;

	listen_sock = -1;

	/* Shutdown(2) on an invalid file descriptor has to return EBADF. */
	if ((FUNC9(listen_sock, SHUT_RDWR) != -1) && (errno != EBADF))
		FUNC4(-1, "shutdown() for invalid file descriptor does not "
		    "return EBADF");

	listen_sock = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (listen_sock == -1)
		FUNC4(-1,
		    "socket(PF_INET, SOCK_STREAM, 0) for listen socket: %s",
		    FUNC11(errno));

	FUNC1(&sock, sizeof(sock));
	sock.sin_len = sizeof(sock);
	sock.sin_family = AF_INET;
	sock.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);
	sock.sin_port = 0;

	if (FUNC0(listen_sock, (struct sockaddr *)&sock, sizeof(sock)) < 0)
		FUNC4(-1, "bind(%s, %d) for listen socket: %s",
		    FUNC7(sock.sin_addr), sock.sin_port, FUNC11(errno));

	len = sizeof(sock);
	if (FUNC5(listen_sock, (struct sockaddr *)&sock, &len) < 0)
		FUNC4(-1, "getsockname() for listen socket: %s",
		    FUNC11(errno));
	port = sock.sin_port;

	if (FUNC8(listen_sock, -1) < 0)
		FUNC4(-1, "listen() for listen socket: %s", FUNC11(errno));

	connect_sock = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (connect_sock == -1)
		FUNC4(-1, "socket(PF_INET, SOCK_STREAM, 0) for connect "
		    "socket: %s", FUNC11(errno));

	FUNC1(&sock, sizeof(sock));
	sock.sin_len = sizeof(sock);
	sock.sin_family = AF_INET;
	sock.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);
	sock.sin_port = port;

	if (FUNC3(connect_sock, (struct sockaddr *)&sock, sizeof(sock)) < 0)
		FUNC4(-1, "connect() for connect socket: %s", FUNC11(errno));
	/* Try to pass an invalid flags. */
	if ((FUNC9(connect_sock, SHUT_RD - 1) != -1) && (errno != EINVAL))
		FUNC4(-1, "shutdown(SHUT_RD - 1) does not return EINVAL");
	if ((FUNC9(connect_sock, SHUT_RDWR + 1) != -1) && (errno != EINVAL))
		FUNC4(-1, "shutdown(SHUT_RDWR + 1) does not return EINVAL");

	if (FUNC9(connect_sock, SHUT_RD) < 0)
		FUNC4(-1, "shutdown(SHUT_RD) for connect socket: %s",
		    FUNC11(errno));
	if (FUNC9(connect_sock, SHUT_WR) < 0)
		FUNC4(-1, "shutdown(SHUT_WR) for connect socket: %s",
		    FUNC11(errno));

	FUNC2(connect_sock);
	FUNC2(listen_sock);

	return (0);
}