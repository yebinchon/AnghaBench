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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  md5enable ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ ENOPROTOOPT ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_MD5SIG ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 long FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(int argc, char *argv[])
{
	struct sockaddr_in sin;
	long count, i, port;
	char *dummy;
	int sock;
	int nonblock = 0, md5enable = 0;

	if (argc < 3 || argc > 5)
		FUNC11();
	for (i=3; i < argc; i++) {
		if (FUNC9(argv[i], "nonblock") == 0)
			nonblock = 1;
		if (FUNC9(argv[i], "tcpmd5") == 0)
			md5enable = 1;
	}

	FUNC0(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	if (FUNC6(argv[0], &sin.sin_addr) == 0)
		FUNC3(-1, "listen");

	port = FUNC10(argv[1], &dummy, 10);
	if (port < 1 || port > 65535 || *dummy != '\0')
		FUNC11();
	sin.sin_port = FUNC5(port);

	count = FUNC10(argv[2], &dummy, 10);
	if (count < 1 || count > 100000 || *dummy != '\0')
		FUNC11();

	for (i = 0; i < count; i++) {
		sock = FUNC8(PF_INET, SOCK_STREAM, 0);
		if (sock == -1)
			FUNC3(-1, "socket");

		/* No warning in default case on ENOPROTOOPT. */
		if (FUNC7(sock, IPPROTO_TCP, TCP_MD5SIG,
		    &md5enable, sizeof(md5enable)) != 0) {
			if (errno == ENOPROTOOPT && md5enable > 0)
				FUNC3(-1, "setsockopt(TCP_MD5SIG)");
			else if (errno != ENOPROTOOPT)
				FUNC12("setsockopt(TCP_MD5SIG)");
		}

		if (nonblock) {
			if (FUNC4(sock, F_SETFL, O_NONBLOCK) != 0)
				FUNC3(-1, "fcntl(F_SETFL)");

			if (FUNC2(sock, (struct sockaddr *)&sin,
			    sizeof(sin)) == -1 && errno != EINPROGRESS)
				FUNC3(-1, "connect");
		} else {
			if (FUNC2(sock, (struct sockaddr *)&sin,
			    sizeof(sin)) == -1)
				FUNC3(-1, "connect");
		}

		FUNC1(sock);
	}
}