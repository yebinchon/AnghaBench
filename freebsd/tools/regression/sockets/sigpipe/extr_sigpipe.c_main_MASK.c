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
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (long,int*) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(int argc, char *argv[])
{
	char *dummy;
	int sock[2];
	long port;

	if (argc != 2)
		FUNC11();

	port = FUNC3(argv[1], &dummy, 10);
	if (port < 0 || port > 65535 || *dummy != '\0')
		FUNC11();

#ifndef SO_NOSIGPIPE
	FUNC12("sigpipe: SO_NOSIGPIPE not defined, skipping some tests");
#endif

	/*
	 * UNIX domain socketpair().
	 */
	if (FUNC2(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
		FUNC0(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
	FUNC8("test_send_wantsignal(PF_LOCAL)", sock[0],
	    sock[1]);

#ifdef SO_NOSIGPIPE
	if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
		err(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
	test_send_dontsignal("test_send_dontsignal(PF_LOCAL)", sock[0],
	    sock[1]);
#endif

	if (FUNC2(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
		FUNC0(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
	FUNC10("test_write_wantsignal(PF_LOCAL)", sock[0],
	    sock[1]);

#ifdef SO_NOSIGPIPE
	if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
		err(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
	test_write_dontsignal("test_write_dontsignal(PF_LOCAL)", sock[0],
	    sock[1]);
#endif

	/*
	 * TCP.
	 */
	FUNC5(port);
	FUNC4(port, sock);
	FUNC8("test_send_wantsignal(PF_INET)", sock[0],
	    sock[1]);

#ifdef SO_NOSIGPIPE
	tcp_pair(port, sock);
	test_send_dontsignal("test_send_dontsignal(PF_INET)", sock[0],
	    sock[1]);
#endif

	FUNC4(port, sock);
	FUNC10("test_write_wantsignal(PF_INET)", sock[0],
	    sock[1]);

#ifdef SO_NOSIGPIPE
	tcp_pair(port, sock);
	test_write_dontsignal("test_write_dontsignal(PF_INET)", sock[0],
	    sock[1]);
#endif
	FUNC6();

	FUNC1(stderr, "PASS\n");
	return (0);
}