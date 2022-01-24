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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int svc_fds ; 
 int svc_fdset ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
#ifdef FD_SETSIZE
	fd_set readfds;
#else
	int readfds;
#endif /* def FD_SETSIZE */
	extern int forked;
	int pid;
	int fd_setsize = FUNC0();

	/* Establish the identity of the parent ypserv process. */
	pid = FUNC2();

	for (;;) {
#ifdef FD_SETSIZE
		readfds = svc_fdset;
#else
		readfds = svc_fds;
#endif /* def FD_SETSIZE */
		switch (FUNC3(fd_setsize, &readfds, NULL, NULL,
			       (struct timeval *)0)) {
		case -1:
			if (errno == EINTR) {
				continue;
			}
			FUNC5("svc_run: - select failed");
			return;
		case 0:
			continue;
		default:
			FUNC4(&readfds);
			if (forked && pid != FUNC2())
				FUNC1(0);
		}
	}
}