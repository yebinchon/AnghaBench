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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PORT1 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char const*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__) ; 
 scalar_t__ FUNC14 (int,int) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(const char *test, int *fdp, int port)
{
	fd_set writefds, exceptfds;
	struct sockaddr_in sin;
	int ret, sock1, sock2, sock3;
	struct timeval tv;

	FUNC5(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC11(INADDR_LOOPBACK);

	/*
	 * First set up the listen socket.
	 */
	sin.sin_port = FUNC12(port);
	sock1 = FUNC17(PF_INET, SOCK_STREAM, 0);
	if (sock1 < 0)
		FUNC8(1, "%s: setup_tcp: socket", test);
	if (FUNC4(sock1, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC8(1, "%s: bind(%s, %d)", test, FUNC13(sin.sin_addr),
		    PORT1);
	if (FUNC14(sock1, -1) < 0)
		FUNC8(1, "%s: listen", test);

	/*
	 * Now connect to it, non-blocking so that we don't deadlock against
	 * ourselves.
	 */
	sock2 = FUNC17(PF_INET, SOCK_STREAM, 0);
	if (sock2 < 0)
		FUNC8(1, "%s: setup_tcp: socket", test);
	if (FUNC10(sock2, F_SETFL, O_NONBLOCK) < 0)
		FUNC8(1, "%s: setup_tcp: fcntl(O_NONBLOCK)", test);
	if (FUNC7(sock2, (struct sockaddr *)&sin, sizeof(sin)) < 0 &&
	    errno != EINPROGRESS)
		FUNC8(1, "%s: setup_tcp: connect(%s, %d)", test,
		    FUNC13(sin.sin_addr), PORT1);

	/*
	 * Now pick up the connection after sleeping a moment to make sure
	 * there's been time for some packets to go back and forth.
	 */
	if (FUNC16(1) != 0)
		FUNC8(1, "%s: sleep(1)", test);
	sock3 = FUNC3(sock1, NULL, NULL);
	if (sock3 < 0)
		FUNC8(1, "%s: accept", test);
	if (FUNC16(1) != 0)
		FUNC8(1, "%s: sleep(1)", test);

	FUNC2(&writefds);
	FUNC1(sock2, &writefds);
	FUNC2(&exceptfds);
	FUNC1(sock2, &exceptfds);
	tv.tv_sec = 1;
	tv.tv_usec = 0;
	ret = FUNC15(sock2 + 1, NULL, &writefds, &exceptfds, &tv);
	if (ret < 0)
		FUNC8(1, "%s: setup_tcp: select", test);
	if (FUNC0(sock2, &exceptfds))
		FUNC9(1, "%s: setup_tcp: select: exception", test);
	if (!FUNC0(sock2, &writefds))
		FUNC9(1, "%s: setup_tcp: select: not writable", test);

	FUNC6(sock1);
	fdp[0] = sock2;
	fdp[1] = sock3;
}