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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  RESOLVER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  resfd ; 
 int FUNC6 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int svc_fds ; 
 int svc_fdset ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ yp_pid ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(void)
{
#ifdef FD_SETSIZE
	fd_set readfds;
#else
	int readfds;
#endif /* def FD_SETSIZE */
	int fd_setsize = FUNC4();
	struct timeval timeout;

	/* Establish the identity of the parent ypserv process. */
	yp_pid = FUNC5();

	for (;;) {
#ifdef FD_SETSIZE
		readfds = svc_fdset;
#else
		readfds = svc_fds;
#endif /* def FD_SETSIZE */

		FUNC2(resfd, &readfds);

		timeout.tv_sec = RESOLVER_TIMEOUT;
		timeout.tv_usec = 0;
		switch (FUNC6(fd_setsize, &readfds, NULL, NULL,
			       &timeout)) {
		case -1:
			if (errno == EINTR) {
				continue;
			}
			FUNC8("svc_run: - select failed");
			return;
		case 0:
			if (FUNC5() == yp_pid)
				FUNC9();
			break;
		default:
			if (FUNC5() == yp_pid) {
				if (FUNC1(resfd, &readfds)) {
					FUNC10();
					FUNC0(resfd, &readfds);
				}
				FUNC7(&readfds);
			}
		}
		if (yp_pid != FUNC5())
			FUNC3(0);
	}
}