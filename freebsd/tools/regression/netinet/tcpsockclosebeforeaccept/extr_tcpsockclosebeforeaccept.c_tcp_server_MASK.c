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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_PORT ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(pid_t partner)
{
	int error, listen_fd, accept_fd;
	struct sockaddr_in sin;

	listen_fd = FUNC10(PF_INET, SOCK_STREAM, 0);
	if (listen_fd < 0) {
		error = errno;
		(void)FUNC7(partner, SIGKILL);
		errno = error;
		FUNC4(-1, "tcp_server: socket");
	}

	FUNC2(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC5(INADDR_LOOPBACK);
	sin.sin_port = FUNC6(TCP_PORT);

	if (FUNC1(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		error = errno;
		(void)FUNC7(partner, SIGKILL);
		errno = error;
		FUNC4(-1, "tcp_server: bind");
	}

	if (FUNC8(listen_fd, -1) < 0) {
		error = errno;
		(void)FUNC7(partner, SIGKILL);
		errno = error;
		FUNC4(-1, "tcp_server: listen");
	}

	FUNC9(10);

	accept_fd = FUNC0(listen_fd, NULL, NULL);
	if (accept_fd < 0) {
		error = errno;
		(void)FUNC7(partner, SIGKILL);
		errno = error;
		FUNC4(-1, "tcp_server: accept");
	}
	FUNC3(accept_fd);
	FUNC3(listen_fd);
}