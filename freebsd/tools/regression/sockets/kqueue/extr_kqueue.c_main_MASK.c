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
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,char*) ; 

int
FUNC9(void)
{
	int kq, sv[2];

	FUNC5("1..49\n");

	kq = FUNC4();
	if (kq == -1)
		FUNC2(errno, "kqueue", NULL, NULL);
	FUNC0("kqueue()");

	/*
	 * Create a UNIX domain datagram socket, and attach/test/detach a
	 * read filter on it.
	 */
	if (FUNC6(PF_UNIX, SOCK_DGRAM, 0, sv) == -1)
		FUNC2(errno, "socketpair", "PF_UNIX, SOCK_DGRAM", NULL);
	FUNC0("socketpair() 1");

	if (FUNC3(sv[0], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");
	FUNC0("fcntl() 1");
	if (FUNC3(sv[1], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");
	FUNC0("fnctl() 2");

	FUNC7(kq, sv, "PF_UNIX, SOCK_DGRAM");

	if (FUNC1(sv[0]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[0]");
	FUNC0("close() 1");
	if (FUNC1(sv[1]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[1]");
	FUNC0("close() 2");

#if 0
	/*
	 * XXXRW: We disable the write test in the case of datagram sockets,
	 * as kqueue can't tell when the remote socket receive buffer is
	 * full, whereas the UNIX domain socket implementation can tell and
	 * returns ENOBUFS.
	 */
	/*
	 * Create a UNIX domain datagram socket, and attach/test/detach a
	 * write filter on it.
	 */
	if (socketpair(PF_UNIX, SOCK_DGRAM, 0, sv) == -1)
		fail(errno, "socketpair", "PF_UNIX, SOCK_DGRAM", NULL);

	if (fcntl(sv[0], F_SETFL, O_NONBLOCK) != 0)
		fail(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");
	if (fcntl(sv[1], F_SETFL, O_NONBLOCK) != 0)
		fail(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");

	test_evfilt_write(kq, sv, "PF_UNIX, SOCK_DGRAM");

	if (close(sv[0]) == -1)
		fail(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[0]");
	if (close(sv[1]) == -1)
		fail(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[1]");
#endif

	/*
	 * Create a UNIX domain stream socket, and attach/test/detach a
	 * read filter on it.
	 */
	if (FUNC6(PF_UNIX, SOCK_STREAM, 0, sv) == -1)
		FUNC2(errno, "socketpair", "PF_UNIX, SOCK_STREAM", NULL);
	FUNC0("socketpair() 2");

	if (FUNC3(sv[0], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
	FUNC0("fcntl() 3");
	if (FUNC3(sv[1], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
	FUNC0("fcntl() 4");

	FUNC7(kq, sv, "PF_UNIX, SOCK_STREAM");

	if (FUNC1(sv[0]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[0]");
	FUNC0("close() 3");
	if (FUNC1(sv[1]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[1]");
	FUNC0("close() 4");

	/*
	 * Create a UNIX domain stream socket, and attach/test/detach a
	 * write filter on it.
	 */
	if (FUNC6(PF_UNIX, SOCK_STREAM, 0, sv) == -1)
		FUNC2(errno, "socketpair", "PF_UNIX, SOCK_STREAM", NULL);
	FUNC0("socketpair() 3");

	if (FUNC3(sv[0], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
	FUNC0("fcntl() 5");
	if (FUNC3(sv[1], F_SETFL, O_NONBLOCK) != 0)
		FUNC2(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
	FUNC0("fcntl() 6");

	FUNC8(kq, sv, "PF_UNIX, SOCK_STREAM");

	if (FUNC1(sv[0]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[0]");
	FUNC0("close() 5");
	if (FUNC1(sv[1]) == -1)
		FUNC2(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[1]");
	FUNC0("close() 6");

	if (FUNC1(kq) == -1)
		FUNC2(errno, "close", "kq", NULL);
	FUNC0("close() 7");

	return (0);
}