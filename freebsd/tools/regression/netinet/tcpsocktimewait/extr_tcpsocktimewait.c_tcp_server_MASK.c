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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(pid_t partner, int listen_fd)
{
	int error, accept_fd;

	accept_fd = FUNC0(listen_fd, NULL, NULL);
	if (accept_fd < 0) {
		error = errno;
		(void)FUNC3(partner, SIGTERM);
		errno = error;
		FUNC2(-1, "tcp_server: accept");
	}
	FUNC1(accept_fd);
	FUNC1(listen_fd);
}