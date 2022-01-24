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
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int,struct sockaddr*,int*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(void)
{
	int listen_sock, connect_sock;
	struct sockaddr_in sin;
	socklen_t len;
	u_short port;
	int arg;

	listen_sock = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (listen_sock == -1)
		FUNC4(-1,
		    "socket(PF_INET, SOCK_STREAM, 0) for listen socket: %s",
		    FUNC11(errno));


	FUNC1(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);
	sin.sin_port = 0;

	if (FUNC0(listen_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC4(-1, "bind(%s, %d) for listen socket: %s",
		    FUNC8(sin.sin_addr), 0, FUNC11(errno));

	len = sizeof(sin);
	if (FUNC6(listen_sock, (struct sockaddr *)&sin, &len) < 0)
		FUNC4(-1, "getsockname() for listen socket: %s",
		    FUNC11(errno));
	port = sin.sin_port;

	if (FUNC9(listen_sock, -1) < 0)
		FUNC4(-1, "listen() for listen socket: %s", FUNC11(errno));

	connect_sock = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (connect_sock == -1)
		FUNC4(-1, "socket(PF_INET, SOCK_STREAM, 0) for connect "
		    "socket: %s", FUNC11(errno));

	arg = O_NONBLOCK;
	if (FUNC5(connect_sock, F_SETFL, &arg) < 0)
		FUNC4(-1, "socket(PF_INET, SOCK_STREAM, 0) for connect socket"
		    ": %s", FUNC11(errno));

	FUNC1(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);
	sin.sin_port = port;

	if (FUNC3(connect_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC4(-1, "connect() for connect socket: %s", FUNC11(errno));
	FUNC2(connect_sock);
	FUNC2(listen_sock);

	return (0);
}