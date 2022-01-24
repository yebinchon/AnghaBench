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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin_local ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int errno ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sockaddr_in*,struct sockaddr_in*) ; 

__attribute__((used)) static void
FUNC11(pid_t partner, int dropflag)
{
	struct sockaddr_in sin, sin_local;
	int error, sock;
	socklen_t slen;

	FUNC8(1);

	sock = FUNC9(PF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		error = errno;
		(void)FUNC6(partner, SIGKILL);
		errno = error;
		FUNC3(-1, "socket");
	}

	FUNC0(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);
	sin.sin_port = FUNC5(TCP_PORT);

	if (FUNC2(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		error = errno;
		(void)FUNC6(partner, SIGKILL);
		errno = error;
		FUNC3(-1, "connect");
	}

	slen = sizeof(sin_local);
	if (FUNC4(sock, (struct sockaddr *)&sin_local, &slen) < 0) {
		error = errno;
		(void)FUNC6(partner, SIGKILL);
		errno = error;
		FUNC3(-1, "getsockname");
	}

	if (dropflag) {
		if (FUNC10(&sin_local, &sin) < 0) {
			error = errno;
			(void)FUNC6(partner, SIGKILL);
			errno = error;
			FUNC3(-1, "tcp_drop");
		}
		FUNC8(2);
	}
	FUNC1(sock);
}