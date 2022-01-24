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
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(pid_t partner, u_short port, int secs)
{
	struct sockaddr_in sin;
	int error, sock;

	FUNC7(1);

	sock = FUNC8(PF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "socket");
	}

	FUNC0(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC5(INADDR_LOOPBACK);
	sin.sin_port = port;

	if (FUNC2(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "connect");
	}

	if (FUNC6(sock, SHUT_RDWR) < 0) {
		error = errno;
		(void)FUNC4(partner, SIGTERM);
		errno = error;
		FUNC3(-1, "shutdown");
	}

	FUNC7(secs);
	FUNC1(sock);
}