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
struct pollfd {int fd; int /*<<< orphan*/  revents; void* events; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 void* MASKVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pollfd*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ debugging ; 
 scalar_t__ doterminate ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct pollfd*,size_t,int) ; 
 int /*<<< orphan*/  rpcbindlockfd ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC7 (struct pollfd*,int) ; 
 int svc_maxfd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int terminate_rfd ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void)
{
	size_t nfds;
	struct pollfd pollfds[FD_SETSIZE + 1];
	int poll_ret, check_ret;
	int n;
#ifdef SVC_RUN_DEBUG
	int i;
#endif
	register struct pollfd	*p;
	fd_set cleanfds;

	for (;;) {
		p = pollfds;
		p->fd = terminate_rfd;
		p->events = MASKVAL;
		p++;
		for (n = 0; n <= svc_maxfd; n++) {
			if (FUNC0(n, &svc_fdset)) {
				p->fd = n;
				p->events = MASKVAL;
				p++;
			}
		}
		nfds = p - pollfds;
		poll_ret = 0;
#ifdef SVC_RUN_DEBUG
		if (debugging) {
			fprintf(stderr, "polling for read on fd < ");
			for (i = 0, p = pollfds; i < nfds; i++, p++)
				if (p->events)
					fprintf(stderr, "%d ", p->fd);
			fprintf(stderr, ">\n");
		}
#endif
		poll_ret = FUNC6(pollfds, nfds, 30 * 1000);

		if (doterminate != 0) {
			FUNC3(rpcbindlockfd);
#ifdef WARMSTART
			syslog(LOG_ERR,
			    "rpcbind terminating on signal %d. Restart with \"rpcbind -w\"",
			    (int)doterminate);
			write_warmstart();	/* Dump yourself */
#endif
			FUNC4(2);
		}

		switch (poll_ret) {
		case -1:
			/*
			 * We ignore all errors, continuing with the assumption
			 * that it was set by the signal handlers (or any
			 * other outside event) and not caused by poll().
			 */
		case 0:
			cleanfds = svc_fdset;
			FUNC1(&cleanfds, 30, FALSE);
			continue;
		default:
#ifdef SVC_RUN_DEBUG
			if (debugging) {
				fprintf(stderr, "poll returned read fds < ");
				for (i = 0, p = pollfds; i < nfds; i++, p++)
					if (p->revents)
						fprintf(stderr, "%d ", p->fd);
				fprintf(stderr, ">\n");
			}
#endif
			/*
			 * If we found as many replies on callback fds
			 * as the number of descriptors selectable which
			 * poll() returned, there can be no more so we
			 * don't call svc_getreq_poll.  Otherwise, there
			 * must be another so we must call svc_getreq_poll.
			 */
			if ((check_ret = FUNC2(pollfds, nfds)) ==
			    poll_ret)
				continue;
			FUNC7(pollfds, poll_ret-check_ret);
		}
#ifdef SVC_RUN_DEBUG
		if (debugging) {
			fprintf(stderr, "svc_maxfd now %u\n", svc_maxfd);
		}
#endif
	}
}