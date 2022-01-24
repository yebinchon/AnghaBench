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
struct kevent {int dummy; } ;
struct dcons_state {int flags; int /*<<< orphan*/  zero; int /*<<< orphan*/  kq; } ;
struct dcons_port {int infd; int outfd; int s; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int EV_ADD ; 
 int EV_DELETE ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int F_READY ; 
 int MAX_XFER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dcons_state*,struct dcons_port*,char*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dcons_state*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct dcons_state *dc, struct dcons_port *p)
{
	struct kevent kev;
	int len, wlen;
	char rbuf[MAX_XFER], wbuf[MAX_XFER+2];

	if ((len = FUNC7(p->infd, rbuf, sizeof(rbuf))) > 0) {
		wlen = 0;
		FUNC2(dc, p, rbuf, len, wbuf, &wlen);
		/* XXX discard if not ready*/
		if (wlen > 0 && (dc->flags & F_READY) != 0) {
			FUNC3(dc, p->port, wbuf, wlen);
			if (verbose > 1) {
				wbuf[wlen] = 0;
				FUNC6("-> %s\n", wbuf);
			} else if (verbose == 1) {
				FUNC6("(%d)", wlen);
				FUNC4(stdout);
			}
		}
	} else {
		if (verbose) {
			if (len == 0)
				FUNC9("port%d: closed", p->port);
			else
				FUNC8("port%d: read", p->port);
		}
		FUNC0(&kev, p->infd, EVFILT_READ,
			EV_DELETE, 0, 0, NULL);
		FUNC5(dc->kq, &kev, 1, NULL, 0, &dc->zero);
		FUNC1(p->infd);
		FUNC1(p->outfd);
		/* XXX exit for pipe case XXX */
		FUNC0(&kev, p->s, EVFILT_READ,
				EV_ADD | EV_ONESHOT, 0, 0, (void *) p);
		FUNC5(dc->kq, &kev, 1, NULL, 0, &dc->zero);
		p->infd = p->outfd = -1;
	}
	return(0);
}