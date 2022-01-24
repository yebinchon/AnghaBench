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
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(int argc, char *argv[])
{
	int listen_sock, accept_sock;
	struct sockaddr_in sin;
	char *dummy;
	long port;

	if (argc != 1)
		FUNC10();

	FUNC2(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC5(INADDR_ANY);

	port = FUNC9(argv[0], &dummy, 10);
	if (port < 1 || port > 65535 || *dummy != '\0')
		FUNC10();
	sin.sin_port = FUNC6(port);

	listen_sock = FUNC8(PF_INET, SOCK_STREAM, 0);
	if (listen_sock == -1)
		FUNC4(-1, "socket");

	if (FUNC1(listen_sock, (struct sockaddr *)&sin, sizeof(sin)) == -1)
		FUNC4(-1, "bind");

	if (FUNC7(listen_sock, -1) == -1)
		FUNC4(-1, "listen");

	while (1) {
		accept_sock = FUNC0(listen_sock, NULL, NULL);
		FUNC3(accept_sock);
	}
}