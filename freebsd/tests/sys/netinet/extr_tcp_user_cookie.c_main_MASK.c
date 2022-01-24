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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  srv ;
typedef  int /*<<< orphan*/  cookie ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_USER_COOKIE ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int buflen ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,char**,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(int argc, char **argv)
{
	struct sockaddr_in srv;
	int sock, accepted, port, cookie;
	int ret;
	char recvbuf[buflen];

	if (argc != 3) {
		FUNC6(stderr, "Usage: %s port cookie\n", argv[0]);
		FUNC5(2);
	}

	port = FUNC1(argv[1]);
	cookie = FUNC1(argv[2]);

	sock = FUNC12(PF_INET, SOCK_STREAM, 0);
	if (sock < 0)
		FUNC4(EXIT_FAILURE, "socket");

	FUNC9(&srv, 0, sizeof(srv));
	srv.sin_len = sizeof(srv);
	srv.sin_family = AF_INET;
	srv.sin_port = FUNC7(port);
	srv.sin_addr.s_addr = INADDR_ANY;

	if (FUNC2(sock, (struct sockaddr *)&srv, srv.sin_len) < 0)
		FUNC4(EX_OSERR, "failed to bind to port %d", port);

	if (FUNC8(sock, 5) < 0)
		FUNC4(EX_OSERR, "failed to listen on socket");

	ret = FUNC11(sock, SOL_SOCKET, SO_USER_COOKIE, &cookie, sizeof(cookie));
	if (ret < 0)
		FUNC4(EX_OSERR, "setsockopt(SO_USER_COOKIE)");

	while (1) {

		accepted = FUNC0(sock, NULL, 0);

		if (accepted < 0)
			FUNC4(EX_OSERR, "accept failed");

		ret = FUNC11(accepted, SOL_SOCKET, SO_USER_COOKIE,
				 &cookie, sizeof(cookie));
		if (ret < 0)
			FUNC4(EX_OSERR, "setsockopt(SO_USER_COOKIE)");

		ret = FUNC10(accepted, &recvbuf, buflen);

		if (ret < 0)
			FUNC13("failed read");

		FUNC3(accepted);
	}

	return (0);
}